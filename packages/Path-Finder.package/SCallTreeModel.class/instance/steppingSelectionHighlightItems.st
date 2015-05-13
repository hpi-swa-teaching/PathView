accessing
steppingSelectionHighlightItems
	^ self steppingNode
		ifNotNilDo: [:node | node childNodesForInstructionAt: self steppingPosition]
		ifNil: [OrderedCollection new]