morphic-test-helpers
aboutToSearchInstanceIn: aClassMorph

	super aboutToSearchInstanceIn: aClassMorph.
	self expandMorphsIn: aClassMorph.