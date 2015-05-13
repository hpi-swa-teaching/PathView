contracts
printIsNot: anObject for: anArgumentName ofType: aClass with: aBuilder
	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName, 
		' ofType: ', aClass asString,
		' isNot: ', anObject, '.').