testing
testIdentityView

	| nodes |
	self tracer viewMode: #identities.
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	self assert: (nodes first views at: #identities) asInteger > 0.
	self assert: (nodes first asString beginsWith: 'SSBClassA').
	self assert: (nodes first asString occurrencesOf: $() = 1.
	self assert: ((nodes first asString subStrings: '(') second subStrings: ')') first asInteger > 0.