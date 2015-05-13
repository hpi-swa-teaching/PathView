testing
testCreateCallNode

	| nodes |
	self tracer createNewCallTreeOn: SSBTest with: #testDoNothing.
	self assert: (self tracer 
				createNewCallNodeOn: SSBClassB with: #compute receiverType: SSBClassB callsBefore: 0) = 1.
	nodes := self callTreeGetNodesFor: SSBClassB method: #compute.
	self assert: nodes notEmpty.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testDoNothing.
	