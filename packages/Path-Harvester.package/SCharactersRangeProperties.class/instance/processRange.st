processing
processRange
	| charCode |
	charCode := self lastObject charCode.
	self range 
		ifNil: [self range: charCode]
		ifNotNil: [self range isInterval
					ifTrue: [(self range rangeIncludes: charCode)
								ifFalse: [self range: (Interval 
											from: (self range start min: charCode) 
											to: (self range stop max: charCode))]]
					ifFalse: [self range: (Interval 
								from: (self range min: charCode) 
								to: (self range max: charCode))]].