event handling
handleMove: evt
	| lastPoint |
	lastPoint := desiredPoint.
	desiredPoint := evt position + offset.
	lastPoint = desiredPoint ifTrue: [ ^self ].
	self adjustCurve
		ifTrue: [ self center: evt position ]
		ifFalse: [ self stopHandleDrag: evt ].
