<h1 align="center">🎵 Yandex.Music Desktop (un-official port of website)</h1>

![Yandex.Music Desktop (un-official port of website)](static/GitHub/macOS_installer_screenshot.jpg)

<h3 align="center"><strong>Please note:</strong> this is <em>only</em> webview port of <a href="https://music.yandex.com" target="_blank">Yandex.Music</a> website as desktop app!</h3>

<br/>

> ### Looking for a similar desktop app for Yandex.Radio?
> 
> - 📻 Un-official [Yandex.Radio Desktop](https://github.com/koddr/yandex-radio-desktop) app

<br/>

## 💭 The Why?

<img width="140px" align="right" src="static/macOS/yamusic_desktop.png" alt="Yandex.Music logo"/>

I love listen music 🥰 and always want to do it as easy as possible. Concept of Yandex.Music service (web for desktop clients and app for mobile) are great, **but not so really**.

- **First** (and most important): I would like to always keep application music app _on hand_ while working at Mac/MacBook. Quickly click on the icon in macOS dock, open app, switch to another song and collapse again. At the same time, without opening a browser and not looking for the desired tab with Yandex.Music.
- **Second** (and important too): my smartphone is _always busy_ with other applications that use headphones with mic, like Skype, Zoom, Discord, mobile calls and so on. In order not to run into browser, look for a tab and pause music. Just took off these headphones and put on others!
- **Third** (and no less important): as an active macOS user, I got used to _native desktop apps_ for listening music (for example, built-in Apple iTunes) and place it on side-mode with another apps (like Telegram) on a separate workspace.

Therefore, I was very upset that _Yandex.Music_ does not have a macOS (or Windows/Linux) desktop application... and created this port of the official Yandex.Music website! 😉

## 🔗 [Download](https://github.com/koddr/yandex-music-desktop/releases) latest version:

- [Apple macOS 10.11+ x64](https://github.com/koddr/yandex-music-desktop/releases/download/0.2.3/yamusic_desktop-macosx-amd64.dmg) (`.dmg`, 2.39 MB)
- [Microsoft Windows 10 x64](https://github.com/koddr/yandex-music-desktop/releases/download/0.2.3/yamusic_desktop-windows-10-amd64.zip) (`.zip`, 2.11 MB)

GNU/Linux → coming as soon as possible.

## ⚙️ Under the hood

Since this is an open source project, you can easily see how it all **actually works**. The code is written with Go (Golang) `1.13.4` and using `Go Modules`.

<details>
<summary>Yandex.Music Desktop source code</summary><br/>

```go
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
		Debug:     false, // set to true, if you want to show web inspector
	})

	// Run app
	w.Run()
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

Installation `.dmg` images for macOS was created by [node-appdmg](https://github.com/LinusU/node-appdmg) (many thx to [Linus Unnebäck](https://github.com/LinusU)).

MS Windows 10 version available thanks to [xgo](https://github.com/karalabe/xgo) (Go CGO cross compiler by [Péter Szilágyi](https://github.com/karalabe)).

### For developers

<details>
<summary>Click to view</summary><br/>

1. Clone this repository and go to folder `yandex-music-desktop`:

```console
foo@bar:~$ git clone https://github.com/koddr/yandex-music-desktop.git
foo@bar:~$ cd yandex-music-desktop
```

2. Change anything you want 👌
3. Build app binary again for macOS (it's required `Go` 1.13+):

```console
foo@bar:~$ make build-macos # build .app for macOS
```

- OR for Windows 10:

```console
foo@bar:~$ go get github.com/karalabe/xgo # install xgo cross compiler
foo@bar:~$ make build-windows # build .exe for Windows 10
```

4. Go to `./build/<macOS|Windows>` folder

- Copy `Yandex.Music Desktop.app` to your `/Applications` folder on macOS:

```console
foo@bar:~$ sudo cp -R ./build/macOS/Yandex.Music\ Desktop.app /Applications
```

- OR copy `Yandex.Music Desktop.exe` to anything you want on Windows 10 system!

#### (Optional) Create macOS installation images

- Install `node-appdmg` (required `Node.js` and `npm`):

```console
foo@bar:~$ npm install -g appdmg
```

- Create macOS installation image (`.dmg`):

```console
foo@bar:~$ make installer-macos # for macOS 10.11+
```

- You can found created image into `./releases/macOS` folder.

#### (Optional) Create zip-archive for Windows 10

- Create zip-archive:

```console
foo@bar:~$ make archive-zip-windows # for Windows 10
```

- You can found created ZIP into `./releases/Windows` folder.

</details>

### For designers

At `./static/macOS` folder you can found layered Adobe Photoshop source file (`.psd`) of macOS installation image: `yamusic_desktop.background.psd` ([CC0 1.0 Universal](https://creativecommons.org/share-your-work/public-domain/cc0)).

## ⚠️ Terms of Use of Yandex.Music

All logos, images and Yandex.Music service website — belong to their respective owners, namely YANDEX LLC.

If you download, install and run _Yandex.Music Desktop_ application from current repository, you're already agree with official **Terms of Use of Yandex.Music**: [EN](https://yandex.com/legal/music_termsofuse/?lang=en), [RU](https://yandex.ru/legal/music_termsofuse/?lang=ru), [BY](https://yandex.by/legal/music_termsofuse/?lang=by), [KZ](https://yandex.kz/legal/music_termsofuse/?lang=kz).

## Developers

- Idea and active development by [Vic Shóstak](https://github.com/koddr) (aka Koddr).

> _The author ([Vic Shóstak](https://github.com/koddr)) of this Yandex.Music desktop port **is not** responsible for work of this desktop application, because YANDEX LLC may changes the way it provides content and/or releases its own desktop application._

## Project assistance

If you want to say «thank you» or/and support active development `Yandex.Music Desktop`:

1. Add a GitHub Star to project.
2. Twit about project [on your Twitter](https://twitter.com/intent/tweet?text=Yandex.Music%20Desktop%20%E2%80%94%20un-official%20port%20of%20website%20&url=https%3A%2F%2Fgithub.com%2Fkoddr%2Fyandex-music-desktop).
3. Donate some money to project author via PayPal: [@paypal.me/koddr](https://paypal.me/koddr?locale.x=en_EN).
4. Join DigitalOcean at my [referral link](https://m.do.co/c/b41859fa9b6e) (your profit is **\$100** and I get \$25).

Thanks for your support! 😘 Together, we make this project better every day.

## TODO

- Add GNU/Linux (amd64) version
- Add icon for Windows 10 version
- Fix low quality rendering Cocoa/WebKit on macOS

## License

_Yandex.Music Desktop_ by [Vic Shóstak](https://github.com/koddr) is an open source software under [MIT](LICENSE) license.

Background image for macOS installer is designed by [Vic Shóstak](https://github.com/koddr) and under [CC0 1.0 Universal](https://creativecommons.org/share-your-work/public-domain/cc0) license protection.
