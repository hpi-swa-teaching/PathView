event handling
mouseEnter: anEvent
	self flag: #mpe. "owner owner works but is very fragile"
	"Required to allow large labels to be shown outside the color legend"
	self owner owner addMorph: self labelMorph.
	self labelMorph position: anEvent cursorPoint + self class labelOffset.