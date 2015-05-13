callTree
createRootNode: aTestClass withTest: aSelector

	self callTreeModel rootNode: (SRootTestCallNode 
								id: self rootId
								class: (aTestClass lookupSelector: aSelector) 
										methodClass
								methodName: aSelector 
								fromSender: nil
								model: self callTreeModel
								receiverType: aTestClass
								callsBefore: 0).
	self currentId: self rootId.
	self callTreeModel currentNode: self callTreeModel rootNode.