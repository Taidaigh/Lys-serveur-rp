version '1.0.2'

client_script('client.lua')

server_script "@mysql-async/lib/MySQL.lua"
server_script "server.lua"

ui_page('html/index.html')

files({
  'html/css/bootstrap-extend.css',
  'html/css/bootstrap.min.css',
  'html/css/master_style_dark.css',
  'html/css/master_style_rtl.css',
  'html/css/master_style.css',
  'html/images/bg1.jpg',
  'html/images/bg2.jpg',
  'html/images/myLogo.png',
  'html/js/jquery-3.3.1.js',
  'html/js/jquery-3.3.1.js',
  'html/index.html',
})

exports {
  'openRegistry'
}
