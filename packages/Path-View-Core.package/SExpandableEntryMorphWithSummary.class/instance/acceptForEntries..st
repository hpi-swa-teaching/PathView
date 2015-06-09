visiting
acceptForEntries: aVisitor

	self entries do: [:m |
		aVisitor visit: m.
		self expanded ifFalse: [self addEntry: m]].
	self updateLabel.  