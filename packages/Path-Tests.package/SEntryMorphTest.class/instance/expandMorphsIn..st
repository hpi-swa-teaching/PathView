morphic-test-helpers
expandMorphsIn: aClassMorph

	aClassMorph allMorphsDo: [:s | (s respondsTo: #expandMorphs) ifTrue: [s expandMorphs]].