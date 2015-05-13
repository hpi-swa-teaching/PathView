testing
testStepOverLastBytecode
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 10).
	self callTree steppingPosition: 5.
	self callTree stepOver.
	self assert: self callTree steppingNode == (self getNode: 7).
	self assert: self callTree steppingPosition == 13.
	self assert: (self getNode: 12) isPartOfSteppingSelection.
	self assert: (self getNode: 11) isPartOfSteppingSelection not.