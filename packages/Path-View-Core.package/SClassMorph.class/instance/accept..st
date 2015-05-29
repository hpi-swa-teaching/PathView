visiting
accept: aVisitor

	aVisitor visitClass: self.
	{nameMorph. classSideMorph. implementationMorph}
		select: #notNil
		thenDo: [:m | aVisitor visit: m].
	self pasteUpMorphOrWorld allConnections
		select: [:connection | connection sourceMorph == self]
		thenDo: [:connection | aVisitor visit: connection ].