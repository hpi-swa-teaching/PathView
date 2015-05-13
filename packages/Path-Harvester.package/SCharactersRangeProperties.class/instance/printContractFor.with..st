contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := Character.
	self printRange: self range
					  for: anArgumentName 
					  property: '#charCode'
					  ofType: type with: aBuilder.
	self httpSafe
		ifTrue: [self printIs: '#isSafeForHTTP' 
					for: anArgumentName ofType: type with: aBuilder].
	self includesLetters
		ifFalse: [self printIsNot: '#isLetter'
					for: anArgumentName ofType: type with: aBuilder].
	self includesDigits
		ifFalse: [self printIsNot: '#isDigit' 
					for: anArgumentName ofType: type with: aBuilder].	
	self includesSeparators
		ifFalse: [self printIsNot: '#isSeparator' 
					for: anArgumentName ofType: type with: aBuilder].	
	self includesSpecials
		ifFalse: [self printIsNot: '#isSpecial'
					for: anArgumentName ofType: type with: aBuilder].			
	self lowercase
		ifFalse: [self printIsNot: '#isLowercase' 
					for: anArgumentName ofType: type with: aBuilder].	
	self uppercase
		ifFalse: [self printIsNot: '#isUppercase' 
					for: anArgumentName ofType: type with: aBuilder].																	