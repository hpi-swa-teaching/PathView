testing
testGetSelectedPath

	| path |
	self callTree newSelectedItem: (self getNode: 12).
	path := self callTree getSelectedPath.
	self assert: path = (OrderedCollection 
								with: self rootNode 
								with: (self getNode: 5) 
								with: (self getNode: 7) 
								with: (self getNode: 12))