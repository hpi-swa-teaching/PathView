processing
processSecondsRangeProperties
	| seconds |
	seconds := self lastObject rawSeconds.
	self secondsRange 
		ifNil: [self secondsRange: seconds]
		ifNotNil: [self secondsRange isInterval
					ifTrue: [(self secondsRange rangeIncludes: seconds)
								ifFalse: [self secondsRange: (Interval 
									from: (self secondsRange start min: seconds) 
									to: (self secondsRange stop max: seconds))]]
					ifFalse: [self secondsRange: (Interval 
								from: (self secondsRange min: seconds) 
								to: (self secondsRange max: seconds))]].