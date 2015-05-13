stepping
stepToSenderButtonEnabled
	self steppingNode isNil
		ifTrue: [^ false]
		ifFalse: [^ self steppingNode fromSender isRoot not]