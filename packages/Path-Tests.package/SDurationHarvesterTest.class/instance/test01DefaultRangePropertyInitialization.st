testing
test01DefaultRangePropertyInitialization
	| property |
	property := SDurationRangeProperties new.
	self 
		assert: property secondsRange isNil;
		assert: property nanoRange isNil;
		deny: property positive;
		deny: property negative;
		deny: property isZero;
		assert: property class label = 'Duration'.