testing
isPartOfSteppingSelection
	self fromSender
		ifNotNilDo: [:sender | ^ sender isSteppingNode
				and: [(sender childNodesForInstructionAt: self callTreeModel steppingPosition)
						includes: self]]
		ifNil: [^ false]