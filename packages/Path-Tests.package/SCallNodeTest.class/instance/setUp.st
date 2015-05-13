testing
setUp

	| callTree |
	callTree := SCallTreeModel new.
	self rootNode: (SCallNode id: 0 class: SSBTest methodName: #testDoNothing fromSender: nil model: callTree receiverType: SSBTest callsBefore: 0).
	self calledNode: (SCallNode id: 1 class: SSBClassA methodName: #doNothing fromSender: self rootNode model: callTree receiverType: SSBClassA callsBefore: 0).