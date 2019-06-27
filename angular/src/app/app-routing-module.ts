import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const appRoutes:Routes = [
  {
    path: 'dashboard',
    loadChildren: './modules/dashboard/dashboard.module#DashboardModule'
  },
  {
    path: 'empleados',
    loadChildren: './modules/empleados/empleados.module#EmpleadosModule'
  },
  // {
  //   path: 'experiencia',
  //   loadChildren: './modules/experience/experience.module#ExperienceModule'
  // },
  {
    path: '**',
    redirectTo: 'dashboard',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(appRoutes)],
  exports: [RouterModule],
  providers: []
})

export class AppRoutingModule {}