tests
testInstallationOneWrapper

	| wrapper |
	wrapper := SBeforeWrapper on: #methodOne inClass: SClassA.
	self deny: self methodRef compiledMethod isMwMethodWrapper.
	wrapper install.
	self assert: self methodRef compiledMethod isMwMethodWrapper.
	wrapper uninstall.
	self deny: self methodRef compiledMethod isMwMethodWrapper.