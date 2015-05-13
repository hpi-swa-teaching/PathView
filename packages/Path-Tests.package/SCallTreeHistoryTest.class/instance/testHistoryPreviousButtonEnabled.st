testing
testHistoryPreviousButtonEnabled

	self deny: self callTree historyPreviousButtonEnabled.
	self callTree newSelectedItem: self rootNode.
	self callTree newSelectedItem: (self getNode: 12).
	self deny: self callTree historyPreviousButtonEnabled.
	self callTree historyBack.
	self assert: self callTree historyPreviousButtonEnabled.
	self callTree historyPrevious.
	self deny: self callTree historyPreviousButtonEnabled.