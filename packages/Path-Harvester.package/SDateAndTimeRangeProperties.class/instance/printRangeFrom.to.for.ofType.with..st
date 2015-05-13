contracts
printRangeFrom: start to: stop for: anArgumentName ofType: aClass with: aBuilder
	aBuilder printSourceLine: 
		('SContract expect: ', anArgumentName, 
		' ofType: ', aClass asString,
		' isBetween: DateAndTime now + ''', start asString, ''' asDuration', 
		' and: DateAndTime now + ''', stop asString, ''' asDuration.').