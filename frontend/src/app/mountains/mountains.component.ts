import { Component, OnInit } from '@angular/core';
import { Resps, Mountain } from "./mountain";
import {FormControl, FormGroup, Validators} from "@angular/forms";
import { MountainsService } from "./mountains.service";
import {MatTableDataSource} from "@angular/material";

@Component({
  selector: 'app-mountains',
  templateUrl: './mountains.component.html',
  styleUrls: ['./mountains.component.css']
})
export class MountainsComponent implements OnInit {

  constructor(
    private mountainsService: MountainsService
  ) {
    this.basicFormGroup = new FormGroup({
      name: new FormControl('', Validators.required)
    })
  }
  ip:string;
  ngOnInit() {
    this.getMountains();
    this.getIP();
  }
  getIP():void{
    this.mountainsService.getIP().subscribe((res:any)=>{
      this.ip=res.ip;
    });
  }
  mountains = new Mountain();
  isLinear: boolean=true ;
  no:number=0;
  basicFormGroup: FormGroup;
  guess;
  ids=[];
  resps = new Resps();
  dataAll = new MatTableDataSource<any>();

  getMountains():void{
    this.mountainsService.getMountains().subscribe((resp)=>{
      console.log(resp);
      console.log(resp.data);
      if(resp.success == true){
        this.resps = resp;
        this.mountains = resp.data;
        console.log(this.mountains);
        for( let i=0;i<resp.data.length;i++){
          this.mountains[i].no=i;
          console.log(resp.data[i].id);
          this.ids[i]=resp.data[i].id
        }
        console.log(this.ids);
        this.dataAll.data = resp.data;
        console.log(this.dataAll.data);
        for( let i=0;i<resp.data.length;i++) {

        }
      }
    })
  }
  next=true;
  changeNext():void{
    this.next=false;
  }
  myGuess;
  myID;
  myIP;
  addData():void{

  }
  guessAll():void{
    this.myGuess=this.ids[0]+":"+this.mountains[0].guess;
    for( let i=1;i<3;i++){
      this.myGuess=this.myGuess+','+this.ids[i]+":"+this.mountains[i].guess;
      console.log(this.myGuess);
    }
    for( let i=0;i<3;i++){
    this.dataAll.data[i].guess=this.mountains[i].guess;
    if(Math.abs(this.dataAll.data[i].guess-this.dataAll.data[i].altitude)<=100){
      this.dataAll.data[i].color=0;
    }
    else{
      this.dataAll.data[i].color=1;
    }
    }
    this.mountainsService.guessAll(this.myGuess,this.ip).subscribe((resp)=>{
      console.log(resp)
    })
  }

}
export class DataM{
  id;
  no: number ;
  name: string;
  altitude: number;
  url: string;
  info: string;
  guess: number;
}

