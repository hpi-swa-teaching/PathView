testing
testExploreTypes

	|  types |
	self tracer traceTest: SSBTest method: #testParamMethod.
	types := self tracer 
				explore: #types 
				on: (self callTreeGetNodesFor: SSBClassA method: #param:method:) first.
	self assert: types notEmpty.
	self assert: types size = 3.

	self assert: types first key == #arguments.
	self assert: types first value size = 2.
	self assert: types first value first = SmallInteger.
	self assert: types first value second = SmallInteger.

	self assert: types second key == #self.
	self assert: types second value == SSBClassA.

	self assert: types third key == #result.
	self assert: types third value == Array.	