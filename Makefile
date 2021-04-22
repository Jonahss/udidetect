all:
	cp -a /System/Library/PrivateFrameworks/MobileDevice.framework ./MobileDevice.framework
	gcc -o udidetect -framework CoreFoundation -framework MobileDevice -F/`pwd` udidetect.c
install:
	cp udidetect /usr/local/bin/
uninstall:
	rm /usr/local/bin/udidetect
