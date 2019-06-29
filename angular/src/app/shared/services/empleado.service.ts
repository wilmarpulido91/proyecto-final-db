import { Injectable } from '@angular/core';
import { Global } from './global.service';
import { Empleado } from '../models/empleado';
import { Observable, BehaviorSubject, throwError } from 'rxjs';
import { ApiService } from './api.service';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { catchError } from 'rxjs/operators';

@Injectable()

export class EmpleadoService {
  public url: string;

  constructor(protected http: HttpClient) {
    this.url = Global.url;
  }

  getEmpleados(): Observable<any> {
    return this.http.get(this.url + 'empleados',
      {headers: new HttpHeaders().set('Content-Type', 'application/json ')}
    );
  }

  addEmpleado(empleado: Empleado): Observable<any> {
    return this.http.post(this.url + 'empleados/add', empleado,
      {headers: new HttpHeaders().set('Content-Type', 'application/json ')}
    );
  }
}
