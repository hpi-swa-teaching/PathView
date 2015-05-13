stepping
stepToQuickMethod: node 
	self selectedItem = node
		ifFalse: [node setAsCurrentSelection].
	(self steppingNode notNil
			and: [self steppingNode ~= node])
		ifTrue: [self steppingNode steppingSelection: nil].
	node steppingSelection: #all.
	self steppingNode: node;
		 steppingPosition: 0;
		 refreshStepping