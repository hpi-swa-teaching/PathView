testing
testParamMethod

	self assert: (self a param: 1 method: 2) = #(1 2).
	self assert: self a myValue = #(1 2).