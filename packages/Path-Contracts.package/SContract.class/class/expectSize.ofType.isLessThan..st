value range contracts
expectSize: anObject ofType: aClass isLessThan: aNumber
	self check: anObject and: aClass IfPossible: [
		(anObject size <= aNumber)
			ifFalse: [
				(self contractViolationFor: SSizeContractViolation and: anObject) 
					givenSize: anObject size;
					expectedSize: aNumber;
					signal]].