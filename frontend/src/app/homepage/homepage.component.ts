import { Component, OnInit } from '@angular/core';
import {coerceNumberProperty} from "@angular/cdk/coercion";
import { User} from "./user";
import { HomepageService} from "./homepage.service";
import { MountainsService} from "../mountains/mountains.service";

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  constructor(
    private homepageService: HomepageService,
    private mountainService: MountainsService
  ) { }

  ngOnInit() {
    this.getIP();
    this.findMe();
  }
  title = 'frontend';
  myAge= 0;//your age
  autoTicks = true;
  disabled = false;
  invert = false;
  max = 100;
  min = 0;
  showTicks = true;
  step = 1;
  thumbLabel = true;
  vertical = false;
  get tickInterval(): number | 'auto' {
    return this.showTicks ? (this.autoTicks ? 'auto' : this._tickInterval) : 0;
  }
  set tickInterval(myAge) {
    this._tickInterval = coerceNumberProperty(myAge);
  }
  private _tickInterval = 1;
  user: User=new User();
  myExpert: string;//how well do you know mountains
  experts: string[] =  [ 'Little', 'Medium', 'Expert' ];
  ip:string;
  getIP():void{
    this.mountainService.getIP().subscribe((res:any)=>{
      this.ip=res.ip;
      console.log(this.ip)
    });
  }
  findMe():void{
    this.mountainService.getIP().subscribe((res:any)=>{
      this.ip=res.ip;
      console.log(this.ip);
      this.homepageService.findMe(this.ip).subscribe((resp)=>{
        console.log(resp.body.data)
      })
    });

  }
  myMountain;
  createUser():void{
    this.user.age=this.myAge;
    this.user.ip=this.ip;
    if(this.myExpert = 'Little'){
      this.user.expert=0;
    }
    else if( this.myExpert = 'Medium'){
      this.user.expert=1;
    }
    else this.user.expert=2;
    this.user.num=this.myMountain;
    this.homepageService.createUser(this.user).subscribe((resp) =>{
      console.log(resp);
      console.log(this.user);
      localStorage.setItem("myIP",this.ip);
    })
  }

}
