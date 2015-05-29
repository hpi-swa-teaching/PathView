corner-oriented layout
corner: cornerNum put: aNode
	"Access corners zero-based to properly apply module-operation when calculating nodes."
	
	SClassDiagram debugShowSubgraphs
		ifTrue: [
			(corneringNodes at: cornerNum + 1) ifNotNil: [ self error: 'Overwriting an already assigned corner!' ] ].
	corneringNodes at: cornerNum + 1 put: aNode.