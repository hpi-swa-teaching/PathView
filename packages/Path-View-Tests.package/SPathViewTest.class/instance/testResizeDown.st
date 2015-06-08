as yet unclassified
testResizeDown

	| oldHeight oldBottom |
	oldHeight := instance classDiagramMorph height.
	oldBottom := instance classDiagramMorph bottom.
	self resizeBottomRightOf: instance windowMorph by: (0 @ 100).

	self assert: [ (oldHeight - instance classDiagramMorph height) = -100 ].
	self assert: [ oldBottom < instance classDiagramMorph top ].