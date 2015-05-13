tracing
createNewCallNodeOn: aClass with: aSelector receiverType: aTypeClass callsBefore: aNumber

	| node |
	node := SCallNode 
			id: self nextId 
			class: aClass
			methodName: aSelector
			fromSender: self callTreeModel currentNode
			model: self callTreeModel
			receiverType: aTypeClass
			callsBefore: aNumber.
	self callTreeModel currentNode addCall: node.
	self callTreeModel currentNode: node.
	self callTreeModel currentNode 
		selectedView: self viewMode;
		selectedProfile: self profilingMode.
	^ node id