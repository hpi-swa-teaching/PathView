testing
testStepReturnLastCallNode
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 20).
	self callTree stepReturn.
	self assert: self callTree steppingNode == (self getNode: 20).
	self assert: self callTree steppingPosition == 2.
	self assert: (self getNode: 21) isPartOfSteppingSelection.
	self assert: (self getNode: 22) isPartOfSteppingSelection not.