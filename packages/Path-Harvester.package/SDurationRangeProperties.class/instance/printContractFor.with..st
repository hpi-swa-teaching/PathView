contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := Duration.
	self secondsRange 
		ifNotNil: [self printRange: self secondsRange
					  for: anArgumentName 
					  property: '#rawSeconds'
					  ofType: type with: aBuilder].
	self nanoRange 
		ifNotNil: [self printRange: self nanoRange
					  for: anArgumentName 
					  property: '#nanoSeconds'
					  ofType: type with: aBuilder].				
	self isZero
		ifFalse: [self printIsNot: '#isZero' 
					for: anArgumentName ofType: type with: aBuilder].