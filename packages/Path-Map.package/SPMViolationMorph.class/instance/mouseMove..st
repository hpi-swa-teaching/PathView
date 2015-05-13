event handling
mouseMove: anEvent
	self labelMorph ifNil: [^ self].
	self labelMorph position: anEvent cursorPoint + self class labelOffset.