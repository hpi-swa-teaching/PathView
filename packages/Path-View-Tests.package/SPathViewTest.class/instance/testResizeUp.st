as yet unclassified
testResizeUp

	| oldHeight oldTop |
	oldHeight := instance classDiagramMorph height.
	oldTop := instance classDiagramMorph top.
	self resizeTopLeftOf: instance windowMorph by: (0 @ -100).

	self assert: [ (oldHeight - instance classDiagramMorph height) = -100 ].
	self assert: [ oldTop > instance classDiagramMorph top ].