processing
process: anObject
	super process: anObject.
	anObject 
		ifNotNil: [self
					processRangeProperty;
					processDayOfWeekNamesProperty;
					processLeapYearProperty;
					processTimeZoneProperty].