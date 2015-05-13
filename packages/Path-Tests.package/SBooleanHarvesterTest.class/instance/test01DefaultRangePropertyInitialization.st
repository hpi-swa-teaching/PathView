testing
test01DefaultRangePropertyInitialization
	| property |
	property := SDefaultRangeProperties new.
	self 
		assert: property constantValue;
		deny: property nilAllowed;
		assert: property lastObject isNil;
		assert: property class label = 'Other Objects'.