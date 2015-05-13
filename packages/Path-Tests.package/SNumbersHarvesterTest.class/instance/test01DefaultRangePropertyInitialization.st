testing
test01DefaultRangePropertyInitialization
	| property |
	property := SNumbersRangeProperties new.
	self 
		assert: property range isNil;
		deny: property includesZero;
		deny: property positive;
		deny: property negative;
		assert: property class label = 'Numbers'.