processing
processRangeProperty
	self range 
		ifNil: [self range: self lastObject]
		ifNotNil: [self range isInterval
					ifTrue: [(self range rangeIncludes: self lastObject)
								ifFalse: [self range: (Interval 
											from: (self range start min: self lastObject) 
											to: (self range stop max: self lastObject))]]
					ifFalse: [self range: (Interval 
								from: (self range min: self lastObject) 
								to: (self range max: self lastObject))]].