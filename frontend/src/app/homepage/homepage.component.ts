import { Component, OnInit } from '@angular/core';
import {coerceNumberProperty} from "@angular/cdk/coercion";

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  constructor() { }

  ngOnInit() {
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

  myExpert: string;//how well do you know mountains
  experts: string[] =  [ 'Little', 'Medium', 'Expert' ]

}
