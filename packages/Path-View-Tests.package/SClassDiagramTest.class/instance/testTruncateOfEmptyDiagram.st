testing
testTruncateOfEmptyDiagram

	| scrollPane |
	instance bounds: (50 @ 50 corner: 200 @ 200).
	scrollPane := SScrollPane forMorph: instance.
	instance truncateDiagram.

	self assert: (instance bounds area = scrollPane bounds area).