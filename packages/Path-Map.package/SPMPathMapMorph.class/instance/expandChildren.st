menu actions
expandChildren
	(self expandMorph isNil or: [self expandMorph owner isNil])
		ifTrue: [self expandMorph: (SPMExpandRootMorph on: self).
			   self expandMorph openInWorld].
	self expandMorph position: (self position x + 5) @ (self position y + 5)