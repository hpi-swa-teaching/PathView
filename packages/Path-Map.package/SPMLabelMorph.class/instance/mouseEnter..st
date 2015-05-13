event handling
mouseEnter: anEvent
	| currentMorph |
	currentMorph := self.
	self owner class == TransformationMorph
		ifTrue: [currentMorph := self owner].
	self parentMorph removeMorph: currentMorph.