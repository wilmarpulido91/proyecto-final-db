import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { EmpleadosListComponent } from './pages/empleados-list/empleados-list.component';
import { EmpleadosAddComponent } from './pages/empleados-add/empleados-add.component';

const routes: Routes = [
  {
    path: 'list',
    component: EmpleadosListComponent
  },
  {
    path: 'add',
    component: EmpleadosAddComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class EmpleadosRoutingModule { }