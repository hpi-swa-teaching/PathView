tree functions
expandSelectedNode
	self isTreeAvailable ifFalse: [^self].
	self selectedItem
		ifNil: [self expandNode: self rootNode]
		ifNotNil: [self expandNode: self selectedItem]
	