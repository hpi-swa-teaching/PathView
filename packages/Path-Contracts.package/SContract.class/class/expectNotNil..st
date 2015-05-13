value range contracts
expectNotNil: anObject
	anObject ifNil: [(self contractViolationFor: SNilContractViolation and: anObject) signal]