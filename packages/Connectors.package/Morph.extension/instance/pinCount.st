*connectors-attachment points
pinCount
	| numberOfPins |
	numberOfPins := 0.
	self embeddedPinsDo: [ :m | numberOfPins := numberOfPins + 1 ].
	^numberOfPins
