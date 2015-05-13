visiting
accept: aVisitor

	aVisitor visitContainerClass: self.
	self pasteUpMorphOrWorld allConnections
		select: [:connection | connection sourceMorph == self]
		thenDo: [:connection | aVisitor visit: connection ].