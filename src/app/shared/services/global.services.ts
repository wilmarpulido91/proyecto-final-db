export var Global = {
  // url: 'http://localhost/app-banlinea-backend/index.php/',
  // url_upload: 'http://localhost/app-banlinea-backend/uploads/',
  url: 'https://webmardesign.com/pruebas/appbanlinea/index.php/',
  url_upload: 'https://webmardesign.com/pruebas/appbanlinea/uploads/',
  showMenu: function(elm1) {
      elm1.classList.toggle('in');
      // elm2.classList.toggle('out');
  },
  showMenuList: function(elm1, elm2) {
      elm1.classList.remove('in');
      elm2.classList.remove('out');
  }
}