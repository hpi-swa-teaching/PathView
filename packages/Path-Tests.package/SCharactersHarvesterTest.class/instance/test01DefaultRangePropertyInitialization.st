testing
test01DefaultRangePropertyInitialization
	| property |
	property := SCharactersRangeProperties new.
	self 
		assert: property range isNil;
		deny: property includesLetters;
		deny: property includesDigits;
		deny: property includesSeparators;
		deny: property includesSpecials;
		deny: property lowercase;
		deny: property uppercase;
		assert: property httpSafe;
		assert: property class label = 'Characters'.