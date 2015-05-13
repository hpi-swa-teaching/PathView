testing
test03bConcernChooserRemoveConcern
	self 
		addGroupAndConcernToChooser;
		assert: self chooser concernButtonLabel = 'Remove Concern'.
	[self chooser concernButtonAction] valueSupplyingAnswer: true.
	self 
		assert: (self concerns groups at: self group) isEmpty;
		deny: self chooser concernButtonEnabled.