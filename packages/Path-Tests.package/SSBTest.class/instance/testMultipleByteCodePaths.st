testing
testMultipleByteCodePaths

	self assert: (self a param: 5 method: 2) = 4.
	self assert: (self a param: 3 method: 2) = #(3 2).