event handling
mouseLeave: anEvent
	self flag: #mpe. "owner owner works but is very fragile"
	self owner owner removeMorph: self labelMorph.