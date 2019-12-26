<h1 align="center">🎵 Yandex.Music Desktop (un-official port of website)</h1>

![Yandex.Music Desktop (un-official port of website)](static/GitHub/macOS_installer_screenshot.jpg)

<p align="center"><strong>Please note:</strong> this is <em>only</em> desktop port of <a href="https://music.yandex.ru" target="_blank">Yandex.Music</a> website.</p>

<p align="center"><em>The author of this desktop port <strong>is not</strong> responsible for long support of this desktop application, because YANDEX LLC may changes the way it provides content and/or releases its own desktop application.</em></p>

## The Why

<img width="140px" align="right" src="static/macOS/yamusic_desktop.png" alt="Yandex.Music logo"/>

I love listen music and always want to do it as easy as possible. Concept of Yandex.Music service (web for desktop clients and app for mobile) are great, but not so really.

- First (and most important): my smartphone is always busy with other applications that use headphones (Skype, Zoom, mobile calls and so on).
- Second (and no less important): I, as an active Mac user, got used to native desktop applications for listening to music, for example, iTunes.

Therefore, I was very upset that _Yandex.Music_ does not have a macOS (or Windows/Linux) desktop application... and created this port for official Yandex.Music website! 😉

## Under the hood

Since this is an open source project, you can easily see how it all **actually works**. The code is written with Go (Golang) `1.13.4` and using `Go Modules`. But all magic is done by absolutely awesome [zserge/webview](https://github.com/zserge/webview) module.

<details>
<summary>More info about module</summary>

A tiny cross-platform webview library for C/C++/Golang to build modern cross-platform GUIs. Also, there are Rust bindings, Python bindings, Nim bindings, Haskell and C# bindings available.

It supports two-way JavaScript bindings (to call JavaScript from C/C++/Go and to call C/C++/Go from JavaScript).

It uses Cocoa/WebKit on macOS, gtk-webkit2 on Linux and MSHTML (IE10/11) on Windows.

![zserge/webview demo](https://github.com/zserge/webview/raw/master/examples/todo-go/screenshots/screenshots.png")

</details>

## Terms of Use of Yandex.Music

All logos, images and Yandex.Music service website — belong to their respective owners, namely YANDEX LLC.

If you download, install and run _Yandex.Music Desktop_ application from current repository, you're already agree with official **Terms of Use of Yandex.Music**: [EN](https://yandex.ru/legal/music_termsofuse/?lang=en), [RU](https://yandex.ru/legal/music_termsofuse/?lang=en), [BY](https://yandex.ru/legal/music_termsofuse/?lang=en), [KZ](https://yandex.ru/legal/music_termsofuse/?lang=en).

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
