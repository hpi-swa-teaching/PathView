harvesting
noteReturn: anObject in: aMethod
	| rangeProperties |
	rangeProperties := anObject 
							ifNil: [self returns 
									at: aMethod methodReference 
									ifAbsent: [^ self]]
							ifNotNil: [self 
										returnPropertiesFor: anObject 
										at: aMethod methodReference].
	rangeProperties isCollection
		ifTrue: [rangeProperties do: [:each | each process: anObject]]
		ifFalse: [rangeProperties process: anObject].