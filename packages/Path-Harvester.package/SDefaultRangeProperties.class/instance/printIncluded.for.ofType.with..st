contracts
printIncluded: aColl for: anArgumentName ofType: aClass with: aBuilder
	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName,
		' ofType: ', aClass asString,
		' isIncludedIn: ', aColl asString, '.').