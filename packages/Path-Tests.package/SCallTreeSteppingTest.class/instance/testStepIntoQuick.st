testing
testStepIntoQuick
	self assert: self callTree steppingNode isNil.
	self callTree stepInto: (self getNode: 7).
	self callTree steppingPosition: 6.
	self callTree stepInto.
	self assert: self callTree steppingNode == (self getNode: 9).
	"self assert: self callTree steppingPosition = 0." 
		"0 depends on Cog VM, otherwise can differ, e.g. 2"