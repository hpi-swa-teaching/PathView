events
processDeferredEvents
	"I may have some queued events. Process them."
	eventQueue ifNotNil:  [| evt |
			[(evt := eventQueue nextOrNil) notNil] whileTrue: 
				[(self handleEvent: evt) ifFalse: [morph missedDeferredEvent: evt]]].
