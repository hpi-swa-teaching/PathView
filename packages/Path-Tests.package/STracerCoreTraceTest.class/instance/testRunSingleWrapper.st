testing
testRunSingleWrapper

	| wrappers nodes |
	wrappers := OrderedCollection new.
	self tracer createNewCallTreeOn: SSBTest with: #testDoNothing.
	[self tracer createWrapperOn: SSBClassA and: #doNothing addTo: wrappers.
	SSBClassA new doNothing] 
		ensure: [wrappers first uninstall].
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testDoNothing.