testing
testInitializationRootNode

	self assert: self rootNode id = 0.
	self assert: self rootNode fromSender = nil.
	self assert: self rootNode nextCalls isEmpty.
	self assert: self rootNode selectedView = #classes.
	self assert: self rootNode selectedProfile = #normal.
	self assert: self rootNode views notEmpty.
	self assert: (self rootNode views at: #classes) = SSBTest.
	self assert: self rootNode profiles isEmpty.
	self assert: self rootNode clientSelector == #testDoNothing.
	self assert: self rootNode clientClass == SSBTest.