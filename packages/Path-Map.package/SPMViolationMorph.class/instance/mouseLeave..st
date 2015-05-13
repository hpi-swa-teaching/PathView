event handling
mouseLeave: anEvent
	self labelMorph ifNil: [^ self].
	(self owner isKindOf: SPMPathMapMorph) ifTrue: [^ self].
	self removeMorph: self labelMorph.