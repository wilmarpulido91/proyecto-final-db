import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

import { throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';

@Injectable()
export class ApiService {
  constructor(
    private _http: HttpClient
  ) {}

  public get(apiUrl: string): Observable<any> {
    return this._http.get(apiUrl).pipe(catchError(this._handleError.bind(this)));
  }

  public post(apiUrl: string, param: object): Observable<any> {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      })
    };
    return this._http.post(apiUrl, param, httpOptions).pipe(catchError(this._handleError.bind(this)));
  }

  private _handleError(err: HttpErrorResponse) {
    console.log(err);
    return throwError(err);
  }
}