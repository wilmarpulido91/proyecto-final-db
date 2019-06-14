import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EmpleadosListComponent } from './pages/empleados-list/empleados-list.component';

import { EmpleadosRoutingModule } from './empleados-routing.module';
import { EmpleadosAddComponent } from './pages/empleados-add/empleados-add.component';

@NgModule({
  declarations: [
    EmpleadosListComponent,
    EmpleadosAddComponent
  ],
  imports: [
    CommonModule,
    EmpleadosRoutingModule
  ]
})
export class EmpleadosModule { }