all:
	true
install:
	mkdir -p /app/Arduino /app/bin
	cp -ra * /app/Arduino
	ln -s /app/Arduino/arduino /app/bin
	mkdir -p /app/share/applications
	cp com.arduino.App.desktop /app/share/applications/ 
	mkdir -p /app/share/icons/hicolor/128x128/apps/
	cp com.arduino.App.png /app/share/icons/hicolor/128x128/apps/com.arduino.App.png
	cp com.arduino.App.desktop /app/Arduino/lib/com.arduino.App.desktop
	rm /app/Arduino/lib/desktop.template
	mkdir -p /app/share/appdata
	cp com.arduino.App.appdata.xml /app/share/appdata/
	chmod -R go+rX /app/Arduino
