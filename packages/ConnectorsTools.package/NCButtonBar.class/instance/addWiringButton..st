buttons
addWiringButton: proto
	| button |
	button := self class buttonClass fromPrototype: proto.
	self addMorphBack: (button
			actionSelector: #startWiring;
			changePixelsOfColor: Color red toColor: Color transparent).
	^button