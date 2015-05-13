testing
testCallTreeFromSenderOfNode12

	| node |
	node := self getNode: 12.
	self assert: node fromSender clientClass == SSBClassA.
	self assert: node fromSender clientSelector == #complexMethod:.