contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := String.
	self printSpellCheckingFor: anArgumentName with: aBuilder.
	self length > 0
		ifTrue: [self printLength: self length 
					for: anArgumentName ofType: type with: aBuilder].
	self isAsciiString
		ifTrue: [self printIs: '#isAsciiString' 
					for: anArgumentName ofType: type with: aBuilder].
	self includesNumbers
		ifFalse: [self printIsNot: '#isAllDigits' 
					for: anArgumentName ofType: type with: aBuilder].	
	self includesSeparators
		ifFalse: [self printIsNot: '#isAllSeparators' 
					for: anArgumentName ofType: type with: aBuilder].					