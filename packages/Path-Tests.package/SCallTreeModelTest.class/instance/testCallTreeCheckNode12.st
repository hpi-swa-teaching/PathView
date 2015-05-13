testing
testCallTreeCheckNode12

	| node |
	node := self getNode: 12.
	self assert: node clientClass == SSBClassB.
	self assert: node clientSelector == #compute.	