buttons
addButton
	| button |
	button := self class buttonClass new.
	button color: self color.
	self addMorphBack: button.
	^button