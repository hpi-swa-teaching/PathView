testing
testTruncateDiagram

	| scrollPane |
	scrollPane := SScrollPane forMorph: instance.
	instance bounds: (0 @ 0 corner: 250 @ 250).
	self addClass: testClass.
	instance truncateDiagram.

	self assert: (instance bounds area = scrollPane bounds area).
	self assert: (instance bounds area > instance boundingBoxOfSubmorphs area).