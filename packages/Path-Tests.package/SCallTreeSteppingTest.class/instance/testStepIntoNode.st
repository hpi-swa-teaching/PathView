testing
testStepIntoNode
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 5).
	self assert: self callTree steppingNode == (self getNode: 5).
	self assert: self callTree steppingPosition == 3.
	self assert: (self getNode: 6) isPartOfSteppingSelection.
	self assert: (self getNode: 7) isPartOfSteppingSelection not.