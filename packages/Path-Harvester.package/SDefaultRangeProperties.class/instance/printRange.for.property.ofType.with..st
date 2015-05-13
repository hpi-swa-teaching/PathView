contracts
printRange: aRange for: anArgumentName property: aString ofType: aClass with: aBuilder
	aRange ifNotNil: [
		aRange isInterval 
			ifTrue: [aBuilder printSourceLine: 
						('SContract expect: ', anArgumentName, 
						' ofType: ', aClass asString,
						' property: ', aString,						
						' isBetween: ', aRange start ,' and: ', aRange stop, '.')]
			ifFalse: [aBuilder printSourceLine: 
						('SContract expect: ', anArgumentName, 
						' ofType: ', aClass asString,
						' property: ', aString,						
						' isBetween: ', aRange, ' and: ', aRange, '.')]].