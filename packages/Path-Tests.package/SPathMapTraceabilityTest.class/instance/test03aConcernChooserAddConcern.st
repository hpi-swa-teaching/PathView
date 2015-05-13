testing
test03aConcernChooserAddConcern
	self 
		addGroupToChooser;
		assert: self chooser concernButtonEnabled;
		assert: self chooser concernButtonLabel = 'Add Concern'.
	[self chooser concernButtonAction] valueSupplyingAnswer: self concern.
	self assert: (self concerns groups at: self group) first = self concern.