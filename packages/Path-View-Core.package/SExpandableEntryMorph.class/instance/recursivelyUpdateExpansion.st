layout and labels
recursivelyUpdateExpansion
	
	expanded ifTrue: [ self updateExpansion ].
	self entries select: #isExpandable thenDo: #recursivelyUpdateExpansion.