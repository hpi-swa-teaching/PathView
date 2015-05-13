value range contracts
compare: anObject with: anotherObject
	^ anotherObject isSymbol
			ifTrue: [anObject perform: anotherObject]
			ifFalse: [anObject = anotherObject]