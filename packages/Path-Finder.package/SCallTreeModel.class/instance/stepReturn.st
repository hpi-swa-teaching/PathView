stepping
stepReturn
	| node |
	node := self steppingNode.
	node fromSender
		ifNotNilDo: [:sender | (sender childNodeAfter: node)
				ifNil: [sender isRoot
						ifTrue: [^ self]]
				ifNotNilDo: [:nextChild | 
					sender isRoot
						ifTrue: [self stepInto: nextChild.
							^ self].
					sender
						callInstructionAndPositionFor: node
						do: [:instruction :position | ((sender childNodesForInstructionAt: position)
									includes: nextChild)
								ifTrue: [self stepInto: nextChild.
									^ self]]]].
	self stepToSender; stepOver