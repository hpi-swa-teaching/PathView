event handling
mouseEnter: anEvent
	self labelMorph ifNil: [^ self].
	(self owner isKindOf: SPMPathMapMorph) ifTrue: [^ self].
	self addMorph: self labelMorph.
	self labelMorph position: anEvent cursorPoint + self class labelOffset.
