import { Injectable } from '@angular/core';
import {Observable} from "rxjs";
import { HttpClient, HttpHeaders} from "@angular/common/http";
import {map} from "rxjs/operators";
import {User} from "../homepage/user";

@Injectable({
  providedIn: 'root'
})

export class MountainsService {

  constructor(
    private http: HttpClient,
  ) { }


  getIP(){
    return this.http.get<IP[]>('http://api.ipify.org/?format=json');

  }

  // getIP(): Observable<any>{
  //   return this.http.get('http://api.ipify.org/');
  //
  // }

  getMountains(): Observable<any> {
    return this.http.get("http://localhost:8086/web/mountains/list")
  }
  guessAll(myGuess:string,myIP:string): Observable<any>{
    return this.http.put("http://localhost:8086/web/user",
      {
        tab:myGuess,
        ip:myIP},
      {headers: new HttpHeaders({
          'Content-Type': "application/json",
          'Access-Control-Allow-Origin': "*",
        }),observe:'response'
      })
}



}class IP{
  ip: string;
}
