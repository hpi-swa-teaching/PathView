processing
processLeapYearProperty
	self lastObject isLeapYear
		ifTrue: [self isLeapYear: true].