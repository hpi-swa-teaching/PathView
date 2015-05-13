processing
processNanosRangeProperties
	| nanos |
	nanos := self lastObject nanoSeconds.
	self nanoRange 
		ifNil: [self nanoRange: nanos]
		ifNotNil: [self nanoRange isInterval
					ifTrue: [(self nanoRange rangeIncludes: nanos)
								ifFalse: [self nanoRange: (Interval 
											from: (self nanoRange start min: nanos) 
											to: (self nanoRange stop max: nanos))]]
					ifFalse: [self nanoRange: (Interval 
								from: (self nanoRange min: nanos) 
								to: (self nanoRange max: nanos))]].