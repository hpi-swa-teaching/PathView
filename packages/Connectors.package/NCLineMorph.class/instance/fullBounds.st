geometry
fullBounds
	^fullBounds ifNil: [
		self computeBounds.
		fullBounds := self outerBounds ].