event handling
enterDraggingSegment
	"lastEventArguments has anEvent . anEvent position . vertexIndex"

	| args |
	args := eventHandler lastEventArguments.
	self comeToFront.
	self setProperty: #draggingSegmentStart
		toValue: (self localPointToGlobal: args first position).
	owner isWorldMorph ifFalse: [self jumpToWorld].
	self addDragShadow.
	args first hand newMouseFocus: self.
	self setProperty: #draggingSegmentIndex toValue: args third.
	self setProperty: #draggingSegmentVertices toValue: line vertices copy

	"constraints do: [ :ea | ea stopStepping ]."