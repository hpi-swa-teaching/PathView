tests
testTwoWrappers

	| wrapper1 wrapper2 |
	wrapper1 := SBeforeWrapper on: #methodOne inClass: SClassA.
	wrapper2 := SBeforeWrapper on: #methodOne inClass: SClassA.
	self checkTouches: {wrapper1 -> 0. wrapper2 -> 0}. 
	self assert: self myObject methodOne.
	self checkTouches: {wrapper1 -> 0. wrapper2 -> 0}. 	
	wrapper1 install.
	self assert: self myObject methodOne.
	self checkTouches: {wrapper1 -> 1. wrapper2 -> 0}. 
	wrapper2 install.
	self assert: self myObject methodOne.
	self checkTouches: {wrapper1 -> 2. wrapper2 -> 1}. 	
	wrapper2 uninstall.
	self assert: self methodRef compiledMethod isMwMethodWrapper.
	self assert: self myObject methodOne.
	self checkTouches: {wrapper1 -> 3. wrapper2 -> 1}. 
	wrapper1 uninstall.
	self deny:  self methodRef compiledMethod isMwMethodWrapper.
	self assert: self myObject methodOne.
	self checkTouches: {wrapper1 -> 3. wrapper2 -> 1}. 	