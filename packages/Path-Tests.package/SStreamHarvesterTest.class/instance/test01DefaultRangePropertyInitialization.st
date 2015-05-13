testing
test01DefaultRangePropertyInitialization
	| property |
	property := SStreamRangeProperties new.
	self 
		deny: property isClosed;
		assert: property contents isEmpty;
		assert: property class label = 'Stream'.