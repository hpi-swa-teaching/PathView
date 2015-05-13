callgraph
explore: aSymbol
	^ self objects 
		at: aSymbol 
		ifAbsentPut: [self tracer explore: aSymbol on: self]