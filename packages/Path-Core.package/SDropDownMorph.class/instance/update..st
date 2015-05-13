updating
update: what
	what == self entriesChangedSelector
		ifTrue: [	self refreshMenuEntries: (self actionModel 
											perform: self entriesChangedSelector)]