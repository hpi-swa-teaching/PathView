processing
processStringContentAnalysis
	#(asDate asDateAndTime asDuration asInteger asNumber asTime asTimeStamp)
		do: [:each | self check: each].
	[(FileDirectory directoryEntryFor: self lastObject)
		ifNotNil: [self contentTypes add: #fileDirectory]] on: Error do: [nil].
	"to check code is also possible #eval: but it is dangerous and not safe"