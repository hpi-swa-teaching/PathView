visiting
accept: aVisitor

	aVisitor visitMethod: self.
	classMorph pasteUpMorphOrWorld allConnections
		select: [:connection | connection sourceMorph == self]
		thenDo: [:connection | aVisitor visit: connection ].
	self updateLabel.