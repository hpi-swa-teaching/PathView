visiting
accept: aVisitor

	aVisitor visitClassName: self.
	self entries do: [:e | aVisitor visit: e ].