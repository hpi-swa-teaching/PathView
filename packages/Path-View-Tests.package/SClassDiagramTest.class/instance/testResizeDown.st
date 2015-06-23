resizing
testResizeDown 

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	self resizeBottomRightOf: scrollPane by: (0 @ 200).

	self assert: (instance boundsInWorld containsRect: scrollPane boundsInWorld).

	