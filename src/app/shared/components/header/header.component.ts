import { Component, OnInit } from '@angular/core';
import { Global } from 'src/app/shared/services/global.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  constructor() { }

  ngOnInit() {}
  
  BtnMenu() {
      var sidebar = document.querySelector('.cont-sidebar');
      Global.showMenu(sidebar);
  }

}
