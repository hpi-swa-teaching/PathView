as yet unclassified
testResizeRight

	| oldWidth oldRight |
	oldWidth := instance classDiagramMorph width.
	oldRight := instance classDiagramMorph right.
	self resizeBottomRightOf: instance windowMorph by: (100 @ 0).

	self assert: [ (oldWidth - instance classDiagramMorph width) = -100 ].
	self assert: [ oldRight > instance classDiagramMorph right ].