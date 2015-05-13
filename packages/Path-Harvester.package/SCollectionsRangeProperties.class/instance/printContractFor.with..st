contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := Collection.
	self maxNumberOfElements > 0
		ifTrue: [self printLength: self maxNumberOfElements 
					for: anArgumentName ofType: type with: aBuilder].
	self emptyAllowed
		ifFalse: [self printIsNot: '#isEmpty' 
					for: anArgumentName ofType: type with: aBuilder].	