contracts
printIs: anObject for: anArgumentName ofType: aClass with: aBuilder
	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName, 
		' ofType: ', aClass asString,
		' is: ', anObject, '.').