processing
processRangeProperty
	| duration offset |
	duration := self lastObject - DateAndTime now.
	self minDate 
		ifNil: [self minDate: duration].
	self maxDate 
		ifNil: [self maxDate: duration].
	offset := 0.05. "5% buffer for timing differences"
	self 
		minDate: (self minDate min: duration - 
					(duration * offset) abs - (Duration seconds: 5));
		maxDate: (self maxDate max: duration + 
					(duration * offset) abs + (Duration seconds: 5)).