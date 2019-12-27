.PHONY: run

run:
	go run ./main.go
	@echo "[✔️] App is running!"

build-macos:
	rm -rf ./build/macOS/ \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/ \
	&& cp -R ./configs/macOS/Info.plist ./build/macOS/Yandex.Music\ Desktop.app/Contents/Info.plist \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/ \
	&& cp -R ./static/macOS/yamusic_desktop.icns ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/yamusic_desktop.icns \
	&& GOOS=darwin GOARCH=amd64 go build -o ./build/macOS/Yandex.Music\ Desktop.app/Contents/MacOS/yamusic_desktop
	@echo "[✔️] Build for macOS complete!"

build-windows:
	rm -rf ./build/Windows/ \
	&& mkdir -p ./build/Windows/ \
	&& xgo -out ./build/Windows/yamusic_desktop --targets=windows-10/amd64 github.com/koddr/yandex-music-desktop \
	&& mv ./build/Windows/yamusic_desktop-windows-10-amd64.exe ./build/Windows/Yandex.Music\ Desktop.exe
	@echo "[✔️] Build for MS Windows 10 x64 complete!"

installer-macos:
	rm -rf ./releases/macOS/ \
	&& mkdir -p ./releases/macOS/ \
	&& appdmg ./configs/macOS/appdmg.config.json ./releases/macOS/yamusic_desktop-macosx-amd64.dmg
	@echo "[✔️] macOS 10.11+ installer created!"

archive-zip-windows:
	rm -rf ./releases/Windows/ \
	&& mkdir -p ./releases/Windows/ \
	&& cd ./build/Windows \
	&& zip ../../releases/Windows/yamusic_desktop-windows-10-amd64.zip ./Yandex.Music\ Desktop.exe
	@echo "[✔️] MS Windows 10 zip-archive created!"
