import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpSentEvent, HttpErrorResponse } from  "@angular/common/http";
import { Global } from './global.service';
import { Empleado } from '../models/empleado';
import { Observable, throwError } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

@Injectable()

export class EmpleadoService {
  public url: string;
  public header:any;
  public httpClient:HttpClient;

	constructor(
		public _http: HttpClient
	){
    this.url = Global.url;
    this.header = Global.httpH;
    this.httpClient = _http;
	}

	// getConductores() {
	// 	return this._http.get(this.url + 'conductores').map(res => res.json());
	// }

	addConductor(empleado: Empleado) {
		let json = JSON.stringify(empleado);
		let params = 'json=' + json;
    
    console.log(json);
    console.log(params);

		return this.httpClient.post(this.url + 'empleados', params, this.header).subscribe(
      data => {
        console.log("Exito", data);
      },
      error => {
        console.log("Error", error);
      }
    );
  }
}