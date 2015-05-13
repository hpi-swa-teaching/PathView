monticello conversion
typeToSymbol: aType
	| container |
	aType class = SContainerType
		ifTrue: [	container := aType deepCopy.
				container 
					typeOfContainer: (self typeToSymbol: container typeOfContainer).
				container typeOfElements ifNotNil: [
					container typeOfElements: 
										(self typeToSymbol: container typeOfElements)].
				container typeOfKeys ifNotNil: [
					container typeOfKeys: (self typeToSymbol: container typeOfKeys)].
				^ container]
		ifFalse: [^ aType name]