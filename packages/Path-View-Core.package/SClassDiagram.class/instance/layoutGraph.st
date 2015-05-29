layout graph-based
layoutGraph
	
	| graph |
	self deleteDebugSubmorphs.
	graph := SMatrixGraph buildFrom: self submorphs.
	graph
		groupNodesIntoInheritanceTrees;		"1. Find and build inheritance trees"
		groupNodesIntoMatrixGraphs.			"2. Split graph into groups of interconnected nodes"
	
	graph := SCenteringGraph 				"3. Offset the layout to be in the center of the diagram."
					center: graph 				"Also extend the diagram area."
					inside: self
					extendAreaBy: self class additionalDiagramSpace.
	graph performLayout.						"4. Calculate"
	
	self class debugShowSubgraphs 			"5. Now finally apply the calculated positions"
		ifTrue: [
			SGraph setCurrentGraph: graph. 	"(Enable debugging the layout algorithms)"
			graph applyDebugLayout ]
		ifFalse: [ graph applyLayout ].