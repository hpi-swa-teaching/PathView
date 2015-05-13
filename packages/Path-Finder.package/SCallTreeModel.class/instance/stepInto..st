stepping
stepInto: aNode 
	(self
			instructionAndPositionAfter: 0
			inNode: aNode
			do: [:instruction :position | self
					stepToInstruction: instruction
					position: position
					inNode: aNode])
		ifFalse: [self stepToQuickMethod: aNode]