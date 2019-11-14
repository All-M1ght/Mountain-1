import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule,HttpClient} from "@angular/common/http";
import { MatCardModule} from "@angular/material/card";
import { MatSliderModule } from "@angular/material/slider";
import { MatFormFieldModule } from "@angular/material/form-field";
import {FormsModule} from "@angular/forms";
import { MatInputModule } from "@angular/material/input";
import {MatRadioModule} from "@angular/material/radio";
import {MatIconModule} from "@angular/material/icon";
import {MatButtonModule} from "@angular/material/button";
import { MountainsComponent } from './mountains/mountains.component';
import { HomepageComponent } from './homepage/homepage.component';
import { MatStepperModule } from "@angular/material";
import { ReactiveFormsModule} from "@angular/forms";
import { EndpageComponent } from './endpage/endpage.component';
import { MatTableModule} from "@angular/material";
import {TranslateModule, TranslateLoader} from '@ngx-translate/core';
import {TranslateHttpLoader} from '@ngx-translate/http-loader';


@NgModule({
  declarations: [
    AppComponent,
    MountainsComponent,
    HomepageComponent,
    EndpageComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatCardModule,
    MatSliderModule,
    MatFormFieldModule,
    FormsModule,
    MatInputModule,
    MatRadioModule,
    MatIconModule,
    MatButtonModule,
    MatStepperModule,
    ReactiveFormsModule,
    HttpClientModule,
    MatTableModule,
    TranslateModule.forRoot({
      loader: {
        provide: TranslateLoader,
        useFactory: HttpLoaderFactory,
        deps: [HttpClient]
      }
    })
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {

}
export function HttpLoaderFactory(http:HttpClient){
  return new TranslateHttpLoader(http);
}
