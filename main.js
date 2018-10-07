const { app, BrowserWindow } = require('electron')

function createWindow() {
  win = new BrowserWindow()
  win.setMenu(null)

  // Open links in default browser window
  win.on('new-window', function(event, url){
    event.preventDefault();
    open(url);
  });

  win.setIcon('icons/icon-whatsapp.png')
  win.loadURL('https://web.whatsapp.com')
}


app.on('ready', createWindow)