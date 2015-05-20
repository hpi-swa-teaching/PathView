buttons
addButtonWithPrototype: proto
	| button |
	button := self class buttonClass fromPrototype: proto.
	self addMorphBack: button.
	^button.