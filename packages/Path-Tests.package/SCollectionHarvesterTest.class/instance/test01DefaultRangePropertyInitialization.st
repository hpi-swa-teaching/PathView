testing
test01DefaultRangePropertyInitialization
	| property |
	property := SCollectionsRangeProperties new.
	self 
		assert: property maxNumberOfElements = 0;
		assert: property fixedSize;
		deny: property emptyAllowed;
		assert: property class label = 'Collections'.