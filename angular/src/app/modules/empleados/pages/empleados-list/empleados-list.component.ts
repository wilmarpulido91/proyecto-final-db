import { Component, OnInit } from '@angular/core';
import { Global } from 'src/app/shared/services/global.service';
import { EmpleadoService } from 'src/app/shared/services/empleado.service';
import { ApiService } from 'src/app/shared/services/api.service';
import { Empleado } from 'src/app/shared/models/empleado';
import { first } from 'rxjs/operators';

@Component({
  selector: 'app-empleados-list',
  templateUrl: './empleados-list.component.html',
  styleUrls: ['./empleados-list.component.scss'],
  providers: [EmpleadoService, ApiService]
})
export class EmpleadosListComponent implements OnInit {

  public title:string;
  public url:string;
  public arrEmpleados:any[];

  constructor(
    private _empleadoService: EmpleadoService
  ) {
    this.title = "Lista de empleados";
    this.url = Global.url;
    this.arrEmpleados = [];
  }

  ngOnInit() {
    this.getEmpleados();
  }

  private getEmpleados() {
    this._empleadoService.getConductores().subscribe(
      data => { this.arrEmpleados = data; console.log('TRAE INFO DEL SERVICIO OK: ', data); },
      err => console.error(err),
      () => console.log('Conductores loaded')
    );
  }
}
