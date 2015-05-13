testing
testRootCallNodes

	self assert: self callTree rootCallNodes notEmpty.
	self assert: self callTree rootCallNodes size = 1.
	self assert: self callTree rootCallNodes first clientClass == SSBTest.
	self assert: self callTree rootCallNodes first clientSelector == #testComplexTrace.