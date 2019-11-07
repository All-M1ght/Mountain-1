import { Component, OnInit } from '@angular/core';
import { Mountain} from "./mountain";
import {FormControl, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-mountains',
  templateUrl: './mountains.component.html',
  styleUrls: ['./mountains.component.css']
})
export class MountainsComponent implements OnInit {

  constructor() {
    this.basicFormGroup = new FormGroup({
      name: new FormControl('', Validators.required)
    })
  }

  ngOnInit() {
    this.check()
  }
  mountains = [
    new Mountain(0,'ZZW','fjdkk',5555,'jdkdjdudndudnuhb',),
    new Mountain(1,'ddd','ddddddd',2000,'ffffffffff',)
  ]
//     public id: number,
//     public name: string,
//     public source: string,
//     public altitude: number,
//     public info: string

  isLinear: boolean=true ;
  check(){

  }
  basicFormGroup: FormGroup;


}
