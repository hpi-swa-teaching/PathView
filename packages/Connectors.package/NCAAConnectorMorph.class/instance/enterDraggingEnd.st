event handling
enterDraggingEnd
	| constraint evt args label |
	self log: #debug items: {'enterDraggingEnd'}.
	self comeToFront.
	args := eventHandler lastEventArguments.
	constraint := args first.
	evt := args second.
	(self isWiring not
			and: [evt shiftPressed
					or: [evt yellowButtonPressed]])
		ifTrue: [self
				insertVertexNextTo: constraint
				at: (self griddedPoint: evt position)].

	owner isWorldMorph
		ifFalse: [self jumpToWorld].
	"make end follow hand"
	constraint input: evt hand;
		 connectToCursorPoint;
		 step.
	evt hand newMouseFocus: self.
	self
		setProperty: #startDraggingEvent
		toValue: (evt copy setHand: nil).
	self visible: true.
	label := self valueOfProperty: #wiringLabel.
	label
		ifNotNil: [self removeProperty: #wiringLabel.
			self pasteUpMorphOrWorld addMorph: label.
			label visible: true].
	self addDragShadow.
