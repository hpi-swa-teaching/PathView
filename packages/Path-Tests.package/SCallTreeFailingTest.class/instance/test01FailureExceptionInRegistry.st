testing
test01FailureExceptionInRegistry
	| signal |
	signal := SwaTestExceptionRegistry 
				at: (self class test actualClass selector: self class test selector) 
				ifAbsent: nil.
	self 
		assert: signal notNil;
		assert: signal asString = 'TestFailure: Assertion failed'.
