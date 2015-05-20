layout
acceptDroppingMorph: aMorph event: evt
	self installPrototype: aMorph.
	aMorph rejectDropMorphEvent: evt.
