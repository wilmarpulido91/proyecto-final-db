import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError, first } from 'rxjs/operators';
import { Router } from '@angular/router';

@Injectable()
export class ErrorInterceptor implements HttpInterceptor {
  router$: Router;

  constructor(private router: Router) {
    this.router$ = router;
  }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    return next.handle(request).pipe(catchError(error => {
      let errorResponse = '';
      if (error.status === 405) {
        errorResponse = 'Usuario no tiene PERMISOS para la ejecución de dicho Método.';
        return throwError(errorResponse);
      }

      if (error.status === 400) {
        errorResponse = 'Su solicitud no pude procesarse.';
        return throwError(errorResponse);
      }

      if (error.url == null) {
          errorResponse = 'No se pudo establecer comunicación con el Servidor.';
          return throwError(errorResponse);
      }

      errorResponse = error.statusText;

      return throwError(errorResponse);
    }));
  }
}
