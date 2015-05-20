event handling
mouseStillDown: evt
	self hotspot: evt position.
	self moveMorphs: evt yellowButtonPressed