accessing
getNode: aNumber

	self callTreeModel currentNode id = aNumber
		ifTrue: [^ self callTreeModel currentNode]
		ifFalse: [^ self callTreeModel 
					findNodeInSubGraph: aNumber 
					startNode: self callTreeModel rootNode].