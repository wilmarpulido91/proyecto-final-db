import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { Global } from 'src/app/shared/services/global.service';
import { EmpleadoService } from 'src/app/shared/services/empleado.service';
import { Empleado } from 'src/app/shared/models/empleado';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Component({
  selector: 'app-empleados-add',
  templateUrl: './empleados-add.component.html',
  styleUrls: ['./empleados-add.component.scss'],
  providers: [EmpleadoService]
})
export class EmpleadosAddComponent implements OnInit {

  public title:string;
  public empleado:Empleado;
  public url:string;

  constructor(
    private _empleadoService: EmpleadoService,
    private _route:ActivatedRoute,
    public _router:Router
  ) {
    this.url = Global.url;
    this.title = "Agrega un empleado";
    this.empleado = new Empleado(0, "", "", "");
  }

  ngOnInit() {
  }

  onSubmit(){
    this.saveEmpleado();
  }
  
  saveEmpleado() {
    this._empleadoService.addConductor(this.empleado);
  }

}
