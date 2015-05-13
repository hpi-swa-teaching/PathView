stepping
hasInstructionAndPositionAfter: position inNode: node 
	^ self
		instructionAndPositionAfter: position
		inNode: node
		do: [:instruction :pos | pos]