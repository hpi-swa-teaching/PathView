testing
testRunOwnExploreWrapper

	| nodes wrapper a |
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	[wrapper := self tracer createExploreWrapper: #selfBefore on: nodes first.
	wrapper install.
	a := SSBClassA new myValue: 123.
	a doNothing.
	self assert: wrapper objects notEmpty.
	self assert: wrapper objects size = 1.
	self assert: wrapper objects first myValue = a myValue.
	self deny: wrapper objects first == a]
		ensure: [wrapper uninstall].