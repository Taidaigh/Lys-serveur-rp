description "Simple Notification Script using https://notifyjs.com/"

ui_page "html/index.html"

client_script "cl_notify.lua"

export "SetQueueMax"
export "SendNotification"

files {
    "html/index.html",
    "html/esx_notify.js",
    "html/noty.js",
    "html/noty.css",
    "html/themes.css",
    "html/appel.wav",
    "html/cop.wav",
    "html/ding.wav",
    "html/info.wav",
    "html/msg.wav",
    "html/ring.wav",
    "html/Oswald-Medium.ttf"
}