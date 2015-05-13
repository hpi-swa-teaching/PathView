comparing
= anObject
	^ (((((super = anObject) 
		and: [self minDate asSeconds = anObject minDate asSeconds])
		and: [self maxDate asSeconds = anObject maxDate asSeconds])
		and: [self dayOfWeekNames = anObject dayOfWeekNames])
		and: [self isLeapYear = anObject isLeapYear])
		and: [self timeZones = anObject timeZones]
		
	    