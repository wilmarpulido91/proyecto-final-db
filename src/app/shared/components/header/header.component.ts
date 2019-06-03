import { Component, OnInit } from '@angular/core';
import { Global } from 'src/app/shared/services/global.services';

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
      // var block = document.querySelector('.block');
      Global.showMenu(sidebar);
  }

}
