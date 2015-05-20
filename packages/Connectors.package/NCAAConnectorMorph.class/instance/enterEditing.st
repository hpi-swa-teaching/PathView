event handling
enterEditing
	"lastArgs are { handle }"

	| args handle |
	args := eventHandler lastEventArguments.
	handle := args first.
	self comeToFront.
	owner isWorldMorph 
		ifFalse: 
			[self jumpToWorld ].
	self addDragShadow.
	self newCursor: Cursor crossHair.
	self setProperty: #editingStartPosition toValue: handle dragStartPoint.
	self setProperty: #editingHandle toValue: handle.
