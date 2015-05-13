stepping
stepReturnButtonEnabled
	self steppingNode isNil
		ifTrue: [^ false]
		ifFalse: [self steppingNode fromSender
				ifNil: [^ false]
				ifNotNilDo: [:sender | ^ sender isRoot not
						or: [(sender childNodeAfter: self steppingNode) isNil not]]]