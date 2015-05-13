value range contracts
expectCorrectSpellingOf: aString
	self check: aString and: String IfPossible: [
		(self checkSpellingOf: aString)
			ifFalse: [
				(self contractViolationFor: SSpellingContractViolation and: aString) 
					givenString: aString;
					signal]].