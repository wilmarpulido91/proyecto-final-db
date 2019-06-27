import { Component, OnInit } from '@angular/core';
import { Global } from 'src/app/shared/services/global.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.scss']
})
export class SidebarComponent implements OnInit {

  constructor() { }

  ngOnInit() {}

  CloseMenu() {
    var sidebar = document.querySelector('.cont-sidebar');
    Global.showMenu(sidebar);
  }

}
