event handling
mouseUpEvent
	"Synthesize a mouse up event for use by Players, etc."
	^MouseButtonEvent new setType: #mouseUp position: self center buttons: MouseEvent redButton hand: self world activeHand.