monticello conversion
symbolToType: aSymbolOrContainer
	| container |
	aSymbolOrContainer class = SContainerType
		ifTrue: [	container := aSymbolOrContainer deepCopy.
				container 
					typeOfContainer: (self symbolToType: container typeOfContainer).
				container typeOfElements ifNotNil: [
					container typeOfElements: 
									(self symbolToType: container typeOfElements)].
				container typeOfKeys ifNotNil: [
					container typeOfKeys: (self symbolToType: container typeOfKeys)].
				^ container]
		ifFalse: [
			aSymbolOrContainer = 'nil' ifTrue: [^ nil].
			(aSymbolOrContainer endsWith: ' class')
				ifTrue: [^ (Smalltalk 
							at: (aSymbolOrContainer allButLast: 6) asSymbol) class]
				ifFalse: [^ Smalltalk at: aSymbolOrContainer]]