visiting
accept: aVisitor

	aVisitor visitImplementation: self.
	self entries do: [:m | aVisitor visit: m ].