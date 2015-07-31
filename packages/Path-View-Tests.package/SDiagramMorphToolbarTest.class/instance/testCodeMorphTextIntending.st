toolbar-tests
testCodeMorphTextIntending

	| stickyMorph |
	stickyMorph := (SStickySourceCodeMorph on: #on: in: (SClassMorph class)).

	self assert: stickyMorph submorphs first submorphs first textMorph margins extent x = -24