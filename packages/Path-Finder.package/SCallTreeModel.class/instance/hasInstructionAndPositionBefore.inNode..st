stepping
hasInstructionAndPositionBefore: position inNode: node 
	^ self
		instructionAndPositionBefore: position
		inNode: node
		do: [:instruction :pos | pos]