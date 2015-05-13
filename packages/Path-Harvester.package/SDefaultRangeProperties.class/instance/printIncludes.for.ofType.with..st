contracts
printIncludes: aColl for: anArgumentName ofType: aClass with: aBuilder
	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName,
		' ofType: ', aClass asString,
		' includes: ', aColl asString, '.').