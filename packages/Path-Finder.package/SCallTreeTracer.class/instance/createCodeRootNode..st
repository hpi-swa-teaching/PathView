callTree
createCodeRootNode: aSourceCodeString

	self callTreeModel rootNode: (SRootCodeCallNode 
								id: self rootId
								code: aSourceCodeString
								fromSender: nil
								model: self callTreeModel).
	self currentId: self rootId.
	self callTreeModel currentNode: self callTreeModel rootNode.