testing
test05aConcernChooserAddMapping
	self addGroupAndConcernToChooser.
	self deny: self chooser mappingButtonEnabled.
	self chooser newSelectedTestItem: {SSBTest}.
	self 
		assert: self chooser mappingButtonEnabled;
		assert: self chooser mappingButtonLabel = 'Add Mapping'.
	self chooser mappingButtonAction.
	self 
		assert: self concerns mapping notEmpty;
		assert: (self concerns mapping at: self concern) first = 
					(MethodReference class: SSBTest selector: #testBinary).	