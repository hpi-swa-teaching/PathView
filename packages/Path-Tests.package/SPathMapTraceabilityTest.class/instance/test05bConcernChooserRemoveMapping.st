testing
test05bConcernChooserRemoveMapping
	self addGroupAndConcernToChooser.
	self chooser newSelectedTestItem: {SSBTest}.
	self chooser mappingButtonAction.
	self chooser newSelectedConcernItem: {self group. self concern}.
	self chooser newSelectedTestItem: {SSBTest}.
	self assert: self chooser mappingButtonLabel = 'Remove Mapping'.
	self chooser mappingButtonAction.
	self assert: (self concerns mapping at: self concern) isEmpty.