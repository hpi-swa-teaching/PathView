resizing
testResizeRight 

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	self resizeBottomRightOf: scrollPane by: (200 @ 0). 

	self assert: (instance boundsInWorld containsRect: scrollPane boundsInWorld).

	