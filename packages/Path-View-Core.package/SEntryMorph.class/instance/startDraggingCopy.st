reengineering
startDraggingCopy
	"Create a copy of the receiver and grab it with the hand. This is not called automatically, subclasses call this
	to implement moving parts of the diagram around."
	
	| copy |
	copy := self veryDeepCopy.
	self currentHand grabMorph: copy.