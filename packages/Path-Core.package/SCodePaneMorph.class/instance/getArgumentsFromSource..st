explore buttons
getArgumentsFromSource: aText

	| signature tokens index |
	signature := aText string lineCorrespondingToIndex: 1.
	tokens := signature findBetweenSubStrs: ' :'.
	index := 0.
	^ tokens select: [:each |
		index := index + 1.
		index even. ].
	