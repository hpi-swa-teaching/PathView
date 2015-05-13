testing
testPartial

	self assert: self a doNothing = self a.
	self assert: SPartialTraceObject new doSomething.