monticello conversion
convertToSymbols
	| symbolBucket map |
	symbolBucket := self class new.
	map := symbolBucket instVarNamed: 'arguments'.
	self arguments keysAndValuesDo: [:key :value | 
		map at: (self methodToAssociation: key) put: (self typesToSymbols: value)].
	map := symbolBucket instVarNamed: 'returns'.
	self returns keysAndValuesDo: [:key :value | 
		map at: (self methodToAssociation: key) put: (self typeToSymbol: value)].
	map := symbolBucket instVarNamed: 'members'.
	self members keysAndValuesDo: [:key :value | 
		map at: (self typeToSymbol: key) put: (self typesToSymbols: value)].
	^ symbolBucket