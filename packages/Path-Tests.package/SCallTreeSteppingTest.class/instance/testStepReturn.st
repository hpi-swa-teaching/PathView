testing
testStepReturn
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 7).
	self callTree stepReturn.
	self assert: self callTree steppingNode == (self getNode: 5).
	self assert: self callTree steppingPosition == 7.
	self assert: (self getNode: 6) isPartOfSteppingSelection not.
	self assert: (self getNode: 7) isPartOfSteppingSelection not.