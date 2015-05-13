testing
testCallTreeChildrenOfNode12

	| node |
	node := self getNode: 12.
	self assert: node nextCalls notEmpty.
	self assert: node nextCalls size = 6.
	self assert: node nextCalls = (OrderedCollection 
								with: (self getNode: 13) 
								with: (self getNode: 14) 
								with: (self getNode: 15) 
								with: (self getNode: 16)
								with: (self getNode: 17)
								with: (self getNode: 18))