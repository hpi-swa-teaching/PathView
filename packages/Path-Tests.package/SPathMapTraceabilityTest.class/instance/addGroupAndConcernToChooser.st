running
addGroupAndConcernToChooser
	self addGroupToChooser.
	[self chooser addConcern] valueSupplyingAnswer: self concern.
	self chooser newSelectedConcernItem: {self group. self concern}.