import {Component, Input, OnInit} from '@angular/core';
import { Mountain} from "../mountains/mountain";

@Component({
  selector: 'app-endpage',
  templateUrl: './endpage.component.html',
  styleUrls: ['./endpage.component.css']
})
export class EndpageComponent implements OnInit {
  @Input() mountain: Mountain;
  constructor() { }

  ngOnInit() {
  }
  mountains;
  test():void{
    console.log(this.mountain)
  }
}
