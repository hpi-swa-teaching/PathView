swim lanes
addSwimLane: evt
	super addSwimLane: evt.
	self addScrollerTo: (self stateRectangle submorphs
		detect: [ :ea | ea isPlayfieldLike ]
		ifNone: [ ^self ]) 