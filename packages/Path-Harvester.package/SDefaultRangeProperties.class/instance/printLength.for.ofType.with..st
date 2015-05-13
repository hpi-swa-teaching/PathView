contracts
printLength: aNumber for: anArgumentName ofType: aClass with: aBuilder.
	aBuilder printSourceLine: 
		('SContract expectSize: ', anArgumentName,
		' ofType: ', aClass asString,
		' isLessThan: ', aNumber, '.').