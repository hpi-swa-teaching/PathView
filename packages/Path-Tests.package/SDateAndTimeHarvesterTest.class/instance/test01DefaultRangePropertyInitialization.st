testing
test01DefaultRangePropertyInitialization
	| property |
	property := SDateAndTimeRangeProperties new.
	self 
		assert: property minDate isNil;
		assert: property maxDate isNil;
		assert: property dayOfWeekNames isEmpty;
		deny: property isLeapYear;
		assert: property timeZones isEmpty;
		assert: property class label = 'DateAndTime'.