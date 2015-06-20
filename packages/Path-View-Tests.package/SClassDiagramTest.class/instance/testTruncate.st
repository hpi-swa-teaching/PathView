testing
testTruncate

	| scrollPane |
	instance bounds: (50 @ 50 corner: 200 @ 200).
	scrollPane := SScrollPane forMorph: instance.
	instance truncateDiagram.

	self assert: (instance boundsInWorld containsRect: scrollPane boundsInWorld).