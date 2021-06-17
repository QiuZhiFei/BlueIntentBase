.PHONY: help

run:
	cd Example && pod install --no-repo-update --verbose
	open Example/BlueIntentBase.xcworkspace/

lint:
	pod lib lint --allow-warnings --verbose

deploy:
	pod trunk push BlueIntentBase.podspec --allow-warnings --verbose

help: 
	@echo targes:  run, lint, deploy
