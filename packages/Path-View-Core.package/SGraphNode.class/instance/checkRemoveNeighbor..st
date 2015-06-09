accessing
checkRemoveNeighbor: aNode
	
	(edges noneSatisfy: [ :edge |
		edge toNode = aNode or: [ edge fromNode = aNode ] ])
			ifTrue: [ neighborNodes remove: aNode ].