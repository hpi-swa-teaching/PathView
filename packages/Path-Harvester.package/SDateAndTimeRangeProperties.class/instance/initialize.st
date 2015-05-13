initialize-release
initialize
	super initialize.
	self 
		minDate: nil;
		maxDate: nil;
		dayOfWeekNames: Set new;
		isLeapYear: false;
		timeZones: Set new.