.PHONY: release

release: builds installers
	@echo "[OK] App successfully build and installers was created!"

run:
	go run ./main.go
	@echo "[OK] App is running!"

builds: build-macos build-linux build-windows
	@echo "[OK] Builds for macOS and Windows complete!"

build-macos:
	rm -rf ./build/macOS/ \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/ \
	&& cp -R ./configs/macOS/Info.plist ./build/macOS/Yandex.Music\ Desktop.app/Contents/Info.plist \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/ \
	&& cp -R ./static/macOS/yamusic_desktop.icns ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/yamusic_desktop.icns \
	&& GOOS=darwin GOARCH=amd64 go build -o ./build/macOS/Yandex.Music\ Desktop.app/Contents/MacOS/yamusic_desktop
	@echo "[OK] Build for macOS complete!"

build-linux:
	rm -rf ./build/Linux/ \
	&& mkdir -p ./build/Linux \
	&& GOOS=linux GOARCH=amd64 go build -o ./build/Linux/yamusic_desktop
	@echo "[OK] Build for Linux complete!"

build-windows:
	rm -rf ./build/Windows/ \
	&& mkdir -p ./build/Windows/ \
	&& xgo -out ./build/Windows/yamusic_desktop -ldflags="-H windowsgui" --targets=windows-10/amd64 \
	github.com/koddr/yandex-music-desktop \
	&& mv ./build/Windows/yamusic_desktop-windows-10-amd64.exe ./build/Windows/Yandex.Music\ Desktop.exe \
	&& cp ./libs/webview2/WebView2Loader.dll ./build/Windows
	@echo "[OK] Build for MS Windows 10 x64 complete!"

installers: installer-macos archive-tar-linux archive-zip-windows
	@echo "[OK] Installers for macOS, Linux and Windows complete!"

installer-macos:
	rm -rf ./releases/macOS/ \
	&& mkdir -p ./releases/macOS/ \
	&& appdmg ./configs/macOS/appdmg.config.json ./releases/macOS/yamusic_desktop-macosx-amd64.dmg
	@echo "[OK] macOS 10.11+ installer created!"

archive-tar-linux:
	rm -rf ./releases/Linux/ \
	&& mkdir -p ./releases/Linux/ \
	&& cd ./build/Linux \
	&& tar -zcvf ../../releases/Linux/yamusic_desktop.tar.gz yamusic_desktop
	@echo "[OK] GNU/Linux tar archive created!"

archive-zip-windows:
	rm -rf ./releases/Windows/ \
	&& mkdir -p ./releases/Windows/ \
	&& cd ./build/Windows \
	&& zip ../../releases/Windows/yamusic_desktop-windows-10-amd64.zip ./Yandex.Music\ Desktop.exe
	@echo "[OK] MS Windows 10 zip-archive created!"
