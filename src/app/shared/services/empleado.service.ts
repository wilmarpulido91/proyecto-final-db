import { Injectable } from '@angular/core';
import { Global } from './global.service';
import { Empleado } from '../models/empleado';
import { Observable, BehaviorSubject } from 'rxjs';
import { ApiService } from './api.service';

@Injectable()

export class EmpleadoService {
  public url: string;

	constructor(
		private _apiService: ApiService
	){
    this.url = Global.url;
	}

	// getConductores() {
	// 	return this._http.get(this.url + 'conductores').map(res => res.json());
	// }

	addConductor(empleado: Empleado) {
		// let json = JSON.stringify(empleado);
		// let params = 'json=' + json;
    
    // console.log(json);
    // console.log(params);

		// return this.httpClient.post(this.url + 'empleados', params, this.header).subscribe(
    //   data => {
    //     console.log("Exito", data);
    //   },
    //   error => {
    //     console.log("Error", error);
    //   }
    // );
    return this._apiService.post(this.url + 'empleados', empleado);
  }
}