event handling
mouseMove: evt
	self hotspot: evt position.
	self moveMorphs: evt yellowButtonPressed