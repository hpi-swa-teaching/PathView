tests
testProceed

	| wrapper1 wrapper2 |
	wrapper1 := SAroundWrapperMethodTwo on: #methodTwo: inClass: SClassA.
	wrapper2 := SAroundWrapperMethodTwo on: #methodTwo: inClass: SClassA.	
	self assert: (self myObject methodTwo: 1) = 1.
	wrapper1 install.
	self assert: (self myObject methodTwo: 1) = 3.
	wrapper1 uninstall.
	self assert: (self myObject methodTwo: 1) = 1.
	wrapper2 install.
	self assert: (self myObject methodTwo: 1) = 3.
	wrapper2 uninstall.