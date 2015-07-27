testing
testTruncateOfEmptyDiagram

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	instance truncateDiagram.

	self assert: (instance bounds area = scrollPane bounds area).