value range contracts
expect: anObject ofType: aClass property: aSymbol includes: aCollection
	self check: anObject and: aClass IfPossible: [
		(aCollection includes: (self getPropertyFrom: anObject with: aSymbol))
			ifFalse: [
				(self contractViolationFor: SIncludesContractViolation and: anObject) 
					expectedCollection: aCollection;
					givenObject: anObject;
					property: aSymbol;
					signal]].