import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS } from  '@angular/common/http';

import { AppComponent } from './app.component';

// Shared Components
import { HeaderComponent } from './shared/components/header/header.component';
import { SidebarComponent } from './shared/components/sidebar/sidebar.component';
import { ContentComponent } from './shared/components/content/content.component';

// Routing
import { AppRoutingModule } from './app-routing-module';
import { AuthInterceptorService } from './shared/services/auth-interceptor.service';
import { ErrorInterceptor } from './shared/services/error.interceptor';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    ContentComponent,
    SidebarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
