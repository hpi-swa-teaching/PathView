resizing
testResizeUp 

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	self resizeTopLeftOf: scrollPane by: (0 @ -200). 

	self assert: (instance boundsInWorld containsRect: scrollPane boundsInWorld).

	