testing
test01DefaultRangePropertyInitialization
	| property |
	property := SStringRangeProperties new.
	self 
		assert: property spellingOkay;
		assert: property length = 0;
		deny: property includesNumbers; 
		deny: property includesSeparators;
		assert: property isAsciiString; 
		assert: property contentTypes isEmpty; 
		assert: property class label = 'Strings'.