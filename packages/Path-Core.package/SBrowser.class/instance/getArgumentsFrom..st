state exploration
getArgumentsFrom: aMethodReference

	| signature tokens index |
	signature := aMethodReference sourceCode string lineCorrespondingToIndex: 1.
	tokens := signature findBetweenSubStrs: ' :'.
	index := 0.
	^ tokens select: [:each |
		index := index + 1.
		index even. ].