import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const appRoutes:Routes = [
  // {
  //   path: 'inicio',
  //   loadChildren: './modules/home/home.module#HomeModule'
  // },
  // {
  //   path: 'acerca-de',
  //   loadChildren: './modules/about-me/about-me.module#AboutMeModule'
  // },
  // {
  //   path: 'experiencia',
  //   loadChildren: './modules/experience/experience.module#ExperienceModule'
  // },
  // {
  //   path: '**',
  //   redirectTo: 'inicio',
  //   pathMatch: 'full'
  // }
];

@NgModule({
  imports: [RouterModule.forRoot(appRoutes)],
  exports: [RouterModule],
  providers: []
})

export class AppRoutingModule {}