type contracts
expect: anObject toBeKindOf: aType
	anObject ifNil: [^ self].
	(anObject isKindOf: aType) 
		ifFalse: [(self contractViolationFor: STypeContractViolation and: anObject)
					messageText: 'Type violation';
					givenType: anObject class;
					expectedType: aType;
					signal].
	