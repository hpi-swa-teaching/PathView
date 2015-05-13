monticello conversion
methodToAssociation: aMethodReference
	| blockDescriptor |
	(aMethodReference respondsTo: #methodReference)  
		ifFalse: [^ aMethodReference compiledMethod methodClass name 
					-> aMethodReference methodSymbol]
		ifTrue: [blockDescriptor := aMethodReference copy.
				blockDescriptor embeddingMethod: (self 
								methodToAssociation: (aMethodReference
													embeddingMethod
														methodReference)).
				^ blockDescriptor].

	