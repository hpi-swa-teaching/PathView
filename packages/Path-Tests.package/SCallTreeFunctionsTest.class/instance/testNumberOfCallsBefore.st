testing
testNumberOfCallsBefore

	| node |
	self assert: (self callTree numberOfCallsBefore: self rootNode) = 0.
	node := self getNode: 12.
	self assert: (self callTree numberOfCallsBefore: node) = 0.
	node := self getNode: 13.
	self assert: (self callTree numberOfCallsBefore: node) = 0.
	node := self getNode: 15.
	self assert: (self callTree numberOfCallsBefore: node) = 1.	
	node := self getNode: 16.
	self assert: (self callTree numberOfCallsBefore: node) = 2.	