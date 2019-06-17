import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

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
    EmpleadosRoutingModule,
    FormsModule,
    HttpClientModule
  ]
})
export class EmpleadosModule { }