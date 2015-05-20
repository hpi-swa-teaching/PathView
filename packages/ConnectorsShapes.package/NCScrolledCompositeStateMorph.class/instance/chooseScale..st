menus
chooseScale: evt
	| handle origin aHand currentScale readout |
	currentScale := self transformMorph scale asFloat.
	aHand := evt ifNil: [self currentHand] ifNotNil: [evt hand].
	origin := aHand position y.
	readout := UpdatingStringMorph on: self selector: #scale.
	readout position: origin + (10@-6); floatPrecision: 0.001.
	readout openInWorld: self world.
	handle := HandleMorph new
		forEachPointDo: [ :newPoint | | newScale |
			newScale := (newPoint y - origin) / 32.0 + currentScale.
			self setScale: (newScale detentBy: 0.25 atMultiplesOf: 0.5 snap: false).
			readout position: newPoint + (10@-6)
		]
		lastPointDo: [ :pt | readout delete ].
	aHand attachMorph: handle.
	handle startStepping.
	self changed. "Magnify handle"