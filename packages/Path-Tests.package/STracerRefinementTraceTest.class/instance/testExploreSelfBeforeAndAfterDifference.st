testing
testExploreSelfBeforeAndAfterDifference

	| before after node |
	self tracer traceTest: SSBTest method: #testModelView.
	node := (self callTreeGetNodesFor: SSBClassB method: #myValue:) first.
	before := (self tracer explore: #selfBefore on: node) first.
	after := (self tracer explore: #selfAfter on: node) first.
	self deny: before == after.
	self assert: before myValue isNil.
	self assert: after myValue = 2.