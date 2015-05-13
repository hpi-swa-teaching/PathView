contracts
printRange: aRange for: anArgumentName ofType: aClass with: aBuilder
	aRange ifNotNil: [
		aRange isInterval 
			ifTrue: [aBuilder printSourceLine: 
						('SContract expect: ', anArgumentName, 
						' ofType: ', aClass asString,
						' isBetween: ', aRange start ,' and: ', aRange stop, '.')]
			ifFalse: [self printIs: aRange 
						 for: anArgumentName 
						 ofType: aClass 
						 with: aBuilder]].