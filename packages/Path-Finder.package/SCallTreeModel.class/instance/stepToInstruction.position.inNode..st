stepping
stepToInstruction: instruction position: position inNode: node 
	| map |
	self selectedItem = node ifFalse: [node setAsCurrentSelection].
	map := DebuggerMethodMap forMethod: node compiledMethod.
	(self steppingNode notNil
			and: [self steppingNode ~= node])
		ifTrue: [self steppingNode steppingSelection: nil].
	node
		steppingSelection: (map rangeForPC: instruction contextIsActiveContext: true).
	self
		steppingNode: node;
		steppingPosition: position;
		refreshStepping