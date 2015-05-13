testing
test04bConcernChooserRemoveColor
	self addGroupAndConcernToChooser.
	[self chooser removeConcern] valueSupplyingAnswer: true.	
	self assert: self concerns colors isEmpty;
		deny: self chooser colorEnabled.