stepping
step
	target ifNil: [ ^self ].
	self wantsSteps ifFalse: [ ^self ].
	target position: (self position + originalPosition + (self joystickOffset / 2)) asIntegerPoint
