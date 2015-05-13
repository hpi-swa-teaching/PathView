value range contracts
expect: anObject ofType: aClass property: aSymbol isBetween: min and: max
	| minValue maxValue |
	self check: anObject and: aClass IfPossible: [
		minValue := self convertToComparableValue: min type: aClass.
		maxValue :=  self convertToComparableValue: max type: aClass.	
		((self getPropertyFrom: anObject with: aSymbol) 
			between: minValue and: maxValue)
				ifFalse: [
				(self contractViolationFor: SRangeContractViolation and: anObject) 
					expectedMin: min;
					expectedMax: max;
					givenObject: anObject;
					property: aSymbol;
					signal]].