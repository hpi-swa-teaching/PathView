bounds-helpers
buildMorphAt: aPoint

	| extent |
	extent := 100@100.
	^ Morph new 
		extent: extent; 
		position: aPoint; 
		yourself 