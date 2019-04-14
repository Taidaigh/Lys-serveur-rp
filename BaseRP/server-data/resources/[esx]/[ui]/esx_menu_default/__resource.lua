resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Menu Default'

version '1.0.0'

client_scripts {
	'client/main.lua'
}

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/app.css',
	'html/js/mustache.min.js',
	'html/js/app.js',
	'html/fonts/pdown.ttf',
	'html/fonts/bankgothic.ttf',
	'html/fonts/RussoOne-Regular.ttf',
	'html/img/cursor.png',
	'html/img/keys/enter.png',
	'html/img/keys/return.png',
	'html/img/head/accessoire_armes.jpg',
	'html/img/head/airport.png',
	'html/img/head/ambulance.png',
	'html/img/head/animalerie.png',
	'html/img/head/baber.png',
	'html/img/head/bahamas.png',
	'html/img/head/bucheron.png',
	'html/img/head/cinema.png',
	'html/img/head/coffre.png',
	'html/img/head/concess.png',
	'html/img/head/emploi.png',
	'html/img/head/esx_tattoosShops.png',
	'html/img/head/garage.png',
	'html/img/head/gouvernement.png',
	'html/img/head/immobilier.png',
	'html/img/head/inventaire.png',
	'html/img/head/mecano.png',
	'html/img/head/pharmacie.png',
	'html/img/head/police.png',
	'html/img/head/raffineur.png',
	'html/img/head/Taxi.png',
	'html/img/head/default.png'
}

dependencies {
	'es_extended'
}