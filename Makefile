.PHONY: setup
setup:
	dart pub global activate fvm
	dart pub global activate melos
	export PATH="$$PATH":"$$HOME/.pub-cache/bin"
	fvm install
	npm install
	melos bootstrap