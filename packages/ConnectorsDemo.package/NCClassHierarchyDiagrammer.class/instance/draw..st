drawing
draw: aClass 
	| x y clsMorph |
	classMorphs at: aClass ifPresent: [:m | ^m].
	x := layoutBox left + (random next * layoutBox width).
	y := layoutBox top + (random next * layoutBox height).
	clsMorph := NCSTUMLDiagramMorph newUMLClassSymbolWithTwoBlocks.
	clsMorph position: x @ y; className: aClass name.
	self pasteUp addMorph: clsMorph.
	self connectParentFor: aClass morph: clsMorph.
	classMorphs at: aClass put: clsMorph.
	^clsMorph