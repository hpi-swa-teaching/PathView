type labels
mouseLeave: event
	super mouseLeave: event.
	self removeMorph: self labelMorph.