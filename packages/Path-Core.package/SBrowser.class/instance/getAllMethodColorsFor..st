class functions
getAllMethodColorsFor: aClassSymbol
	| methods |
	methods := self methodColors keys 
					select: [:each | each actualClass = (Smalltalk at: aClassSymbol)].
	methods ifEmpty: [^ {}].
	^ methods collect: [:each | self methodColors at: each]