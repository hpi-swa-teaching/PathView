state handler guards
doubleClickTimedOut
	"Answer whether the current event happened outside of the double click timeout"

	^(event isMorphicEvent ifTrue: [ event timeStamp ] ifFalse: [ Time millisecondClockValue ]) - firstClickDown timeStamp > self doubleClickTime