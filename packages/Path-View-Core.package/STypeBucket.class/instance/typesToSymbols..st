monticello conversion
typesToSymbols: aCollection
	^ aCollection collect: [:each | self typeToSymbol: each]