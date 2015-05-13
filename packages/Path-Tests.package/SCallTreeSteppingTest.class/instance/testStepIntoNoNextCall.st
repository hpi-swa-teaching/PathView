testing
testStepIntoNoNextCall
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 12).
	self callTree steppingPosition: 4.
	self callTree stepInto.
	self assert: self callTree steppingNode == (self getNode: 12).
	self assert: self callTree steppingPosition == 4.
	self assert: (self getNode: 15) isPartOfSteppingSelection not.
	self assert: (self getNode: 16) isPartOfSteppingSelection not.