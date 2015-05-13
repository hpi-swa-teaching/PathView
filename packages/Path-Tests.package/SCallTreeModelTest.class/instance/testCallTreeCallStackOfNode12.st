testing
testCallTreeCallStackOfNode12

	| node |
	node := self getNode: 12.
	self assert: node getCallStack notEmpty.
	self assert: node getCallStack size = 4.
	self assert: node getCallStack = (OrderedCollection 
								with: self rootNode 
								with: (self getNode: 5) 
								with: (self getNode: 7) 
								with: node)