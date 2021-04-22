all:
	rsync -r /Library/Apple/System/Library/PrivateFrameworks/MobileDevice.framework "./" --exclude=XPCServices --links
	gcc -o udidetect -framework CoreFoundation -framework MobileDevice -F/`pwd` udidetect.c
install:
	cp udidetect /usr/local/bin/
uninstall:
	rm /usr/local/bin/udidetect
