as yet unclassified
testResizeLeft

	| oldWidth oldLeft |
	oldWidth := instance classDiagramMorph width.
	oldLeft := instance classDiagramMorph left.
	self resizeTopLeftOf: instance windowMorph by: (-100 @ 0).

	self assert: [ (oldWidth - instance classDiagramMorph width) = -100 ].
	self assert: [ oldLeft < instance classDiagramMorph left ].