import { Injectable } from '@angular/core';
import { Global } from './global.service';
import { Empleado } from '../models/empleado';
import { Observable, BehaviorSubject } from 'rxjs';
import { ApiService } from './api.service';
import { HttpClient } from '@angular/common/http';

@Injectable()

export class EmpleadoService {
  public url: string;

	constructor(protected httpClient: HttpClient){
    this.url = Global.url;
	}

	getConductores():Observable<any> {
		return this.httpClient.get<any>(this.url + 'empleados');
	}

	addConductor(empleado: Empleado):Observable<any> {
    return this.httpClient.post(this.url + 'empleados/add', empleado);
  }
}