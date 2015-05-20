private
joystickOffset
	| xShift yShift |
	xShift := joystick leftRight * (self gridModulus x / 3.125).
	yShift := joystick upDown * (self gridModulus y / 3.125) negated.
	^xShift @ yShift
