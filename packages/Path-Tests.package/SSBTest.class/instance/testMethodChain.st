testing
testMethodChain

	self assert: (self a methodChain: (self a methodChain: (self a methodChain: 1) + 1) + 1) = 3.
	