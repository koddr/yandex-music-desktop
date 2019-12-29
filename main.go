package main

import "github.com/zserge/webview"

func main() {
	// URL params
	p := "origin=music_button-header&retpath=https%3A%2F%2Fmusic.yandex.com%2Fhome"

	// Init app with webview options
	w := webview.New(webview.Settings{
		Title:     "Yandex.Music Desktop",
		URL:       "https://passport.yandex.com/auth?" + p,
		Width:     800,
		Height:    960,
		Resizable: true,
		Debug:     false,
	})

	// Run app
	w.Run()
}
