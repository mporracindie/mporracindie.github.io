

build:
	jorge build
	rm -rf docs/*
	mv target/* docs/
