import { HttpHeaders } from  "@angular/common/http";

export var Global = {
  url: 'http://localhost:50251/api/',
  showMenu: function(elm:any) {
      elm.classList.toggle('in');
  },
  httpH: {
    headers: new HttpHeaders({
      'Content-Type':  'application/json',
      'Authorization': 'my-auth-token'
    })
  }
}