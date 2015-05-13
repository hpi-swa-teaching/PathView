comparing
hash
	^ ((((super hash 
		bitXor: self minDate hash)
		bitXor: self maxDate hash)
		bitXor: self dayOfWeekNames hash)
		bitXor: self isLeapYear hash)
		bitXor: self timeZones hash
		
	    