stepping
stepToSender
	| node |
	node := self steppingNode.
	node fromSender
		ifNotNilDo: [:sender | sender isRoot
				ifFalse: [sender
						callInstructionAndPositionFor: node
						do: [:instruction :position | self
								stepToInstruction: instruction
								position: position
								inNode: sender]]]