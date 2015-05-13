testing
testStepOver
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 5).
	self callTree stepOver.
	self assert: self callTree steppingNode == (self getNode: 5).
	self assert: self callTree steppingPosition == 5.
	self assert: (self getNode: 7) isPartOfSteppingSelection.
	self assert: (self getNode: 6) isPartOfSteppingSelection not.