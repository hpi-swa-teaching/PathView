-- all --
testAround

	| wrapper |
	wrapper := SAroundWrapperMethodOne on: #methodOne inClass: SClassA.
	self assert: self myObject methodOne.
	wrapper install.
	self deny: self myObject methodOne.
	wrapper uninstall.
	self assert: self myObject methodOne.
	
	