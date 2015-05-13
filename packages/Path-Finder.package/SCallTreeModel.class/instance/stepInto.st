stepping
stepInto
	| childNode |
	self
		steppingNodeAndPositionDo: [:node :position | (position > 1
					and: [childNode := (node childNodesForInstructionAt: position) at: 1 ifAbsent: [].
						childNode notNil])
				ifTrue: [self stepInto: childNode]
				"ifFalse: [self stepOver]"]