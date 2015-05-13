stepping
stepOverButtonEnabled
	self steppingNode
		ifNil: [^ false]
		ifNotNil: [self
				steppingNodeAndPositionDo: [:node :position | (self hasInstructionAndPositionAfter: position inNode: node)
						ifTrue: [^ true]
						ifFalse: [node fromSender
								ifNotNilDo: [:sender | sender isRoot
										ifTrue: [^ (sender childNodeAfter: node) isNil not]
										ifFalse: [^ self stepReturnButtonEnabled]]]]]