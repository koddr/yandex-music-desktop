.PHONY: run

run:
	go run ./main.go
	@echo "[✔️] App is running!"

build-macos:
	rm -rf ./build \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/ \
	&& cp -R ./configs/macOS/Info.plist ./build/macOS/Yandex.Music\ Desktop.app/Contents/Info.plist \
	&& mkdir -p ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/ \
	&& cp -R ./static/macOS/yamusic_desktop.icns ./build/macOS/Yandex.Music\ Desktop.app/Contents/Resources/yamusic_desktop.icns \
	&& GOOS=darwin GOARCH=amd64 go build -o ./build/macOS/Yandex.Music\ Desktop.app/Contents/MacOS/yamusic_desktop
	@echo "[✔️] Build for macOS complete!"

installer-macos-10_4:
	rm -rf ./releases/macOS/yamusic_desktop.osx10_4x64.dmg \
	&& mkdir -p ./releases/macOS/ \
	&& appdmg ./configs/macOS/appdmg.config.osx10_4.json ./releases/macOS/yamusic_desktop.osx10_4x64.dmg
	@echo "[✔️] macOS 10.4+ installer created!"

installer-macos-10_11:
	rm -rf ./releases/macOS/yamusic_desktop.osx10_11x64.dmg \
	&& mkdir -p ./releases/macOS/ \
	&& appdmg ./configs/macOS/appdmg.config.osx10_11.json ./releases/macOS/yamusic_desktop.osx10_11x64.dmg
	@echo "[✔️] macOS 10.11+ installer created!"
