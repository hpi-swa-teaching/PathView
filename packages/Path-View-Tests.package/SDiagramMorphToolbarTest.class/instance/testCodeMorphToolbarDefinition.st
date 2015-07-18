toolbar-tests
testCodeMorphToolbarDefinition

	| stickyMorph toolbarWithout5Elements |

	toolbarWithout5Elements := false.
	[stickyMorph := (SStickySourceCodeMorph on: #on: in: (SClassMorph class))]
		on: Error
		do: [toolbarWithout5Elements := true]. "Throws error if size is not 5 -> expected failure"

	self assert: toolbarWithout5Elements = false.