testing
testCallTreeRootNode

	self assert: self callTree rootNode clientClass == SSBTest.
	self assert: self callTree rootNode clientSelector == #testComplexTrace.
	self assert: self callTree rootNode nextCalls notEmpty.