buttons
addButton
	| button |
	button := self class buttonClass new stationarySetup.
	button color: self color.
	self addMorphBack: button.
	^button
