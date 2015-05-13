contracts
printIncludes: aCollection for: anArgumentName property: aString ofType: aClass with: aBuilder

	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName,
		' ofType: ', aClass asString,
		' property: ', aString,		
		' includes: ', aCollection asString, '.').