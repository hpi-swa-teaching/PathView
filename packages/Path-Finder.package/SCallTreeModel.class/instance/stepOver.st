stepping
stepOver
	self
		steppingNodeAndPositionDo: [:node :position | (self
					instructionAndPositionAfter: position
					inNode: node
					do: [:instruction :newPosition | self
							stepToInstruction: instruction
							position: newPosition
							inNode: node])
				ifFalse: [self stepReturn]]