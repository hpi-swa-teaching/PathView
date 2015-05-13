private
convertMethodReferenceToString: aMethodReference
	^ aMethodReference classSymbol asString, 
		(aMethodReference classIsMeta ifTrue: [ ' class' ] ifFalse: ['']), 
		'>>', 
		aMethodReference methodSymbol asString