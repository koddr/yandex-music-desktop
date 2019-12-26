<h1 align="center">🎵 Yandex.Music Desktop (un-official port of website)</h1>

![Yandex.Music Desktop (un-official port of website)](static/GitHub/macOS_installer_screenshot.jpg)

<p align="center"><strong>Please note:</strong> this is <em>only</em> desktop port of <a href="https://music.yandex.com" target="_blank">Yandex.Music</a> website.</p>

<p align="center"><em>The author of this desktop port <strong>is not</strong> responsible for long support of this desktop application, because YANDEX LLC may changes the way it provides content and/or releases its own desktop application.</em></p>

## The Why

<img width="140px" align="right" src="static/macOS/yamusic_desktop.png" alt="Yandex.Music logo"/>

I love listen music 🥰 and always want to do it as easy as possible. Concept of Yandex.Music service (web for desktop clients and app for mobile) are great, **but not so really**.

- **First** (and most important): I would like to always keep application music app _on hand_ while working at Mac/MacBook. Quickly click on the icon in macOS dock, open app, switch to another song and collapse again. At the same time, without opening a browser and not looking for the desired tab with Yandex.Music.
- **Second** (and important too): my smartphone is _always busy_ with other applications that use headphones with mic, like Skype, Zoom, Discord, mobile calls and so on. In order not to run into browser, look for a tab and pause music. Just took off these headphones and put on others!
- **Third** (and no less important): as an active macOS user, I got used to _native desktop apps_ for listening music (for example, built-in Apple iTunes) and place it on side-mode with another apps (like Telegram) on a separate workspace.

Therefore, I was very upset that _Yandex.Music_ does not have a macOS (or Windows/Linux) desktop application... and created this port of the official Yandex.Music website! 😉

## Under the hood

Since this is an open source project, you can easily see how it all **actually works**. The code is written with Go (Golang) `1.13.4` and using `Go Modules`.

<details>
<summary>Yandex.Music Desktop source code</summary><br/>

```go
package main

import "github.com/zserge/webview"

func main() {
	// Webview options:
	//  - name: Yandex.Music Desktop
	name := "Yandex.Music Desktop"
	//  - URL to login screen: https://passport.yandex.com/auth?...
	url := "https://passport.yandex.com/auth?origin=music_button-header&retpath=https%3A%2F%2Fmusic.yandex.com%2Fhome"
	//  - sizes: 800x800 px
	width := 800
	height := 800
	//  - resizable: true
	resizable := true

	// Let's open window app with options:
	webview.Open(name, url, width, height, resizable)
}

```
</details>

But all magic is done by absolutely awesome [webview](https://github.com/zserge/webview) module by [Serge Zaitsev](https://github.com/zserge).

<details>
<summary>More about webview module</summary><br/>

A tiny cross-platform webview library for C/C++/Golang to build modern cross-platform GUIs. Also, there are Rust bindings, Python bindings, Nim bindings, Haskell and C# bindings available.

It supports two-way JavaScript bindings (to call JavaScript from C/C++/Go and to call C/C++/Go from JavaScript).

It uses Cocoa/WebKit on macOS, gtk-webkit2 on Linux and MSHTML (IE10/11) on Windows.

![zserge/webview demo](https://github.com/zserge/webview/raw/master/examples/todo-go/screenshots/screenshots.png)

</details>

## List of supports OS

Installation `.dmg` image for:

- macOS 10.4+ x64
- macOS 10.11+ x64

GNU/Linux and MS Windows → comming as soon as possible.

### 🔗 [Download](https://github.com/koddr/yandex-music-desktop/releases) latest version of _Yandex.Music Desktop_ from Assets on Releases page.

## Terms of Use of Yandex.Music

All logos, images and Yandex.Music service website — belong to their respective owners, namely YANDEX LLC.

If you download, install and run _Yandex.Music Desktop_ application from current repository, you're already agree with official **Terms of Use of Yandex.Music**: [EN](https://yandex.com/legal/music_termsofuse/?lang=en), [RU](https://yandex.ru/legal/music_termsofuse/?lang=ru), [BY](https://yandex.by/legal/music_termsofuse/?lang=by), [KZ](https://yandex.kz/legal/music_termsofuse/?lang=kz).

## Developers

- Idea and active development by [Vic Shóstak](https://github.com/koddr) (aka Koddr).

## Project assistance

If you want to say «thank you» or/and support active development `Yandex.Music Desktop`:

1. Add a GitHub Star to project.
2. Twit about project [on your Twitter](https://twitter.com/intent/tweet?text=Yandex.Music%20Desktop%20%E2%80%94%20un-official%20port%20of%20website%20&url=https%3A%2F%2Fgithub.com%2Fkoddr%2Fyandex-music-desktop).
3. Donate some money to project author via PayPal: [@paypal.me/koddr](https://paypal.me/koddr?locale.x=en_EN).
4. Join DigitalOcean at my [referral link](https://m.do.co/c/b41859fa9b6e) (your profit is **\$100** and I get \$25).

Thanks for your support! 😘 Together, we make this project better every day.

## License

_Yandex.Music Desktop_ (by [Vic Shóstak](https://github.com/koddr)) is an open source software under [MIT](LICENSE) license.
