testing
testStepInto
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 5).
	self callTree stepOver.
	self callTree stepInto.
	self assert: self callTree steppingNode == (self getNode: 7).
	self assert: self callTree steppingPosition == 3.
	self assert: (self getNode: 8) isPartOfSteppingSelection.
	self assert: (self getNode: 9) isPartOfSteppingSelection not.