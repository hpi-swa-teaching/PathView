tracing
returnFromNode: id

	| node |
	self callTreeModel currentNode id = id
		ifTrue: [self callTreeModel 
					currentNode: self callTreeModel currentNode fromSender]
		ifFalse: [node := self callTreeModel 
								findNodeInSubGraph: id 
								startNode: self callTreeModel rootNode.
				self callTreeModel currentNode: node fromSender].