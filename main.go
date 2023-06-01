package main

import "github.com/webview/webview"

func main() {
	// URL params
	p := "origin=music_button-header&retpath=https%3A%2F%2Fmusic.yandex.com%2Fhome"

	// Init app
	w := webview.New(false)
	defer w.Destroy()

	// Settings
	w.SetTitle("Yandex.Music Desktop")
	w.SetSize(800, 960, webview.HintNone)
	w.Navigate("https://passport.yandex.com/auth?" + p)

	// Run app
	w.Run()
}
