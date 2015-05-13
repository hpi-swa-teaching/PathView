value range contracts
expect: anObject ofType: aClass is: anotherObject
	self check: anObject and: aClass IfPossible: [
		(self compare: anObject with: anotherObject)
			ifFalse: [
				(self contractViolationFor: SPropertyContractViolation and: anObject) 
					expected: true;
					givenProperty: anObject;
					expectedProperty: anotherObject;
					signal]].