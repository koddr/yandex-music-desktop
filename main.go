package main

import "github.com/zserge/webview"

func main() {
	// Webview options:
	//  - name: Yandex.Music Desktop
	name := "Yandex.Music Desktop"
	//  - URL to login screen: https://passport.yandex.ru/auth?...
	url := "https://passport.yandex.ru/auth?origin=music_button-header&retpath=https%3A%2F%2Fmusic.yandex.ru%2Fhome"
	//  - sizes: 800x800 px
	width := 800
	height := 800
	//  - resizable: true
	resizable := true

	// Let's open window app with options:
	webview.Open(name, url, width, height, resizable)
}
