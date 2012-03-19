all: posix

win32:
	chmod +x make-win32.sh
	chmod +x make-java.sh
	chmod +x make-clean.sh
	./make-win32.sh

posix:
	chmod +x make-posix.sh
	chmod +x make-java.sh
	chmod +x make-clean.sh
	./make-posix.sh

java:
	./make-java.sh

clean:
	./make-clean.sh

