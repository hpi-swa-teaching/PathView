tests
testOneWrapper

	| wrapper |
	wrapper := SBeforeWrapper on: #methodOne inClass: SClassA.
	self assert: self myObject methodOne.
	self checkTouches: {wrapper -> 0}. 
	wrapper install.
	self checkTouches: {wrapper -> 0}. 
	self assert: self myObject methodOne.
	self checkTouches: {wrapper -> 1}. 
	wrapper uninstall.
	self assert: ((MethodReference class: SClassA selector: #methodOne) compiledMethod isKindOf: CompiledMethod).
	self checkTouches: {wrapper -> 1}. 
	self assert: self myObject methodOne.
	self checkTouches: {wrapper -> 1}.