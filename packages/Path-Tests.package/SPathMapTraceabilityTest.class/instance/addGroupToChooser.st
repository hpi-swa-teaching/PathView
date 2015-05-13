running
addGroupToChooser
	[self chooser addConcernGroup] valueSupplyingAnswer: self group.
	self chooser newSelectedConcernItem: {self group}.