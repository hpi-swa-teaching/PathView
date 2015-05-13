harvesting
noteMember: anObject for: aNumber in: aClass
	| rangeProperties |
	rangeProperties := anObject 
							ifNil: [(self members
									at: aClass 
									ifAbsent: [^ self])
										at: aNumber]
							ifNotNil: [self 
										memberPropertiesFor: anObject 
										at: aClass
										index: aNumber].
	rangeProperties ifNil: [^ self].
	rangeProperties isCollection
		ifTrue: [rangeProperties do: [:each | each process: anObject]]
		ifFalse: [rangeProperties process: anObject].