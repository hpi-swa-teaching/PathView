event handling
mouseLeave: anEvent
	self enabled ifTrue: [super color: self normalColor] ifFalse: [super color: self disabledColor].