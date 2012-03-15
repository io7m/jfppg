all:
	chmod +x make-build.sh
	chmod +x make-java.sh
	chmod +x make-clean.sh
	./make-build.sh

java:
	./make-java.sh

clean:
	./make-clean.sh

