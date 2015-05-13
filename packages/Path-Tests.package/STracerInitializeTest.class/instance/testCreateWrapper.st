testing
testCreateWrapper

	| wrappers |
	wrappers := OrderedCollection new.
	[self tracer createWrapperOn: SSBClassA and: #doNothing addTo: wrappers.
	self assert: wrappers size = 1.
	self assert: wrappers first tracer == self tracer.
	self assert: wrappers first wrappedClass == SSBClassA.
	self assert: wrappers first clientSelector == #doNothing.] 
		ensure: [wrappers first uninstall].