resizing
testResizeLeft

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	self resizeTopLeftOf: scrollPane by: (-200 @ 0). 

	self assert: (instance boundsInWorld containsRect: scrollPane boundsInWorld).

	