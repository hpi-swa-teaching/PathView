testing
test07DateAndTimeAssertions
	| source |
	source :=  (SSBClassD>>#myValue2:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expect: anObject ofType: DateAndTime isBetween: DateAndTime now +');
		assert: (source includesSubString: 'SContract expect: anObject ofType: DateAndTime property: #timeZoneName includes: #(''Local Time'').');
		assert: (source includesSubString: 'SContract expect: anObject ofType: DateAndTime property: #dayOfWeekName includes: #(#');
		assert: (source includesSubString: DateAndTime yesterday dayOfWeekName asString);
		assert: (source includesSubString: DateAndTime today dayOfWeekName asString);
		assert: (source includesSubString: DateAndTime tomorrow dayOfWeekName asString).
	DateAndTime now isLeapYear
		ifFalse: [self assert: (source includesSubString: 'SContract expect: anObject ofType: DateAndTime isNot: #isLeapYear.')].	