testing
testHistoryBackButtonEnabled

	self deny: self callTree historyBackButtonEnabled.
	self callTree newSelectedItem: self rootNode.
	self deny: self callTree historyBackButtonEnabled.
	self callTree newSelectedItem: (self getNode: 12).
	self assert: self callTree historyBackButtonEnabled.
	self callTree historyBack.
	self deny: self callTree historyBackButtonEnabled.
	self callTree historyPrevious.
	self assert: self callTree historyBackButtonEnabled.
	