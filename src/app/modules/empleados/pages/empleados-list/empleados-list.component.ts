import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-empleados-list',
  templateUrl: './empleados-list.component.html',
  styleUrls: ['./empleados-list.component.scss']
})
export class EmpleadosListComponent implements OnInit {

  public title:string;

  constructor() {
    this.title = "Lista de empleados";
  }

  ngOnInit() {
  }

}