stepping
stepBackButtonEnabled
	self steppingNode
		ifNil: [^ false]
		ifNotNil: [self
		steppingNodeAndPositionDo: [:node :position | (self hasInstructionAndPositionBefore: position inNode: node)
				ifTrue: [^ true]
				ifFalse: [node fromSender
						ifNotNilDo: [:sender | sender isRoot
								ifTrue: [^ (sender childNodeBefore: node) isNil not]
								ifFalse: [^ self stepToSenderButtonEnabled]]]]]