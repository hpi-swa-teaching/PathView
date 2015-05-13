stepping
stepBack
	self
		steppingNodeAndPositionDo: [:node :position | (self
					instructionAndPositionBefore: position
					inNode: node
					do: [:instruction :newPosition | self
							stepToInstruction: instruction
							position: newPosition
							inNode: node])
				ifFalse: [node fromSender
						ifNotNilDo: [:sender | sender isRoot
								ifTrue: [(sender childNodeBefore: node)
										ifNotNilDo: [:child | self stepToLastInstructionIn: child]]
								ifFalse: [self stepToSender]]]]