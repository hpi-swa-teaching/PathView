testing
test02bConcernChooserRemoveGroup
	self addGroupToChooser.
	self assert: self chooser groupButtonLabel = 'Remove Group'.
	[self chooser groupButtonAction] valueSupplyingAnswer: true.
	self assert: self concerns groups isEmpty.