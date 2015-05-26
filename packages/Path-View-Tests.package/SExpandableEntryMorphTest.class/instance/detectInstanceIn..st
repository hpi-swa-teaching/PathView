morphic-test-helpers
detectInstanceIn: aClassMorph

	^ aClassMorph allMorphs detect: [:m | m class = SStateMorph]