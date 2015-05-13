stepping
stepToLastInstructionIn: aNode 
	(self
			instructionAndPositionBefore: -1
			inNode: aNode
			do: [:instruction :position | self
					stepToInstruction: instruction
					position: position
					inNode: aNode])
		ifFalse: [self stepToQuickMethod: aNode]