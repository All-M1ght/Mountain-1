import { Injectable } from '@angular/core';
import { Observable } from "rxjs";
import { User} from "./user";
import {HttpClient} from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class HomepageService {

  constructor(
    private http: HttpClient
  ) { }
  createUser(data:User): Observable<any> {
    return this.http.post<User>("http://localhost:8086/web/user",data,{ observe:'response'})
  }

}
