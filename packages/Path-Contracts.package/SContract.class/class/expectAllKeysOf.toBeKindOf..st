type contracts
expectAllKeysOf: aDictionary toBeKindOf: aType
	aDictionary isDictionary ifFalse: [^ self].
	aDictionary ifNil: [^ self].
	aDictionary keysDo: [:each | self expect: each toBeKindOf: aType]