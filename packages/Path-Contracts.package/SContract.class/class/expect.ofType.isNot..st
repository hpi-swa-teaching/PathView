value range contracts
expect: anObject ofType: aClass isNot: anotherObject
	self check: anObject and: aClass IfPossible: [
		(self compare: anObject with: anotherObject)
			ifTrue: [
				(self contractViolationFor: SPropertyContractViolation and: anObject) 
					expected: false;
					givenProperty: anObject;
					expectedProperty: anotherObject;
					signal]].