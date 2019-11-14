import { Component, OnInit } from '@angular/core';
import { Resps, Mountain } from "./mountain";
import {FormControl, FormGroup, Validators} from "@angular/forms";
import { MountainsService } from "./mountains.service";
import {MatTableDataSource} from "@angular/material";
import {coerceNumberProperty} from "@angular/cdk/coercion";
import {register} from "ts-node";

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
      first: new FormControl(0, Validators.required,),
      second: new FormControl(0, Validators.required )
    })
  }

  autoTicks = true;
  disabled = false;
  invert = false;
  max = 9000;
  min = 0;
  showTicks = true;
  step = 1;
  thumbLabel = true;
  get tickInterval(): number | 'auto' {
    return this.showTicks ? (this.autoTicks ? 'auto' : this._tickInterval) : 0;
  }
  private _tickInterval = 1;
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
  slider;
  ids=[];
  resps = new Resps();
  dataAll = new MatTableDataSource<any>();
  try1():void{
    console.log(this.mountains)
  }
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
        }//存所有id
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
  test1(index):void{
    console.log(index);
    this.mountains[index].guess=this.mountains[index].slider;
    console.log(this.mountains)
  }
  myGuess;
  myID;
  myIP;
  id;

  allGuess=[];
  checkOne=0;
  ifFinished():void{
    for( let i=0;i<3;i++){
      if(this.mountains[i].guess>0){
        this.checkOne=this.checkOne+1;
      }
    }
    console.log(this.checkOne)
    if(this.checkOne==3){
      this.guessAll();
      this.changeNext();
    }
    else{
      alert('Please finish all your questions!')
    }
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
    this.mountainsService.findMe(this.ip).subscribe((resp)=>{
      console.log(resp.body.data);
      this.allGuess=resp.body.data;
      console.log(this.allGuess[this.allGuess.length-1].id);
      this.id=this.allGuess[this.allGuess.length-1].id;
      this.mountainsService.guessAll(this.myGuess,this.id).subscribe((resp)=>{
        console.log(resp)
      })
    });

  }
  accept():void{
    alert("Thank you a lot for your time!")
  }
  refuse():void{
    alert("We are sorry to hear that, thank you!");
    this.mountainsService.findMe(this.ip).subscribe((resp)=>{
      this.allGuess=resp.body.data;
      console.log(this.allGuess[this.allGuess.length-1].id);
      this.id=this.allGuess[this.allGuess.length-1].id;
      this.mountainsService.refuse(this.id).subscribe((resp)=>{
        console.log(resp)
      })
    });
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

