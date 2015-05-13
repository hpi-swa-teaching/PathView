pathMap-helper
activateMenuFor: aPathMapMorph
	| menuMorph |
	aPathMapMorph mouseUp: nil.
	menuMorph := aPathMapMorph rootMorph menuMorph.
	self 
		assert: menuMorph notNil;
		assert: menuMorph targetMorph = aPathMapMorph.
	^ menuMorph