contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := Number.
	self printRange: self range for: anArgumentName ofType: type with: aBuilder.
	self includesZero
		ifFalse: [self printIsNot: 0 for: anArgumentName ofType: type with: aBuilder].