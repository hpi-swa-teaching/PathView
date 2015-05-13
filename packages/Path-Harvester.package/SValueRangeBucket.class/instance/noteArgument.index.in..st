harvesting
noteArgument: anObject index: aNumber in: aMethod
	| rangeProperties |
	rangeProperties := anObject 
							ifNil: [(self arguments 
									at: aMethod methodReference 
									ifAbsent: [^ self])
										at: aNumber]
							ifNotNil: [self 
										argumentPropertiesFor: anObject 
										at: aMethod methodReference
										index: aNumber].
	rangeProperties ifNil: [^ self].					
	rangeProperties isCollection
		ifTrue: [rangeProperties do: [:each | each process: anObject]]
		ifFalse: [rangeProperties process: anObject].