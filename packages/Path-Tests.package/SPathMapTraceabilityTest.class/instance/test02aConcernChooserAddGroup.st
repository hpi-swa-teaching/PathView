testing
test02aConcernChooserAddGroup
	self 
		assert: self concerns groups isEmpty;
		assert: self chooser groupButtonEnabled;
		assert: self chooser groupButtonLabel = 'Add Group'.
	[self chooser groupButtonAction] valueSupplyingAnswer: self group.
	self 
		assert: (self concerns groups at: self group) isEmpty.