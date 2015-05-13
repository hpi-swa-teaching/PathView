testing
testSetAsCurrentSelection

	self assert: self rootNode callTreeModel selectedItem isNil.
	self rootNode setAsCurrentSelection.
	self assert: self rootNode callTreeModel selectedItem = self rootNode.