testing
test04aConcernChooserChooseColor
	self 
		addGroupAndConcernToChooser;
		assert: (self concerns colors at: self concern) class = Color;
		assert: self chooser colorEnabled.
	self chooser setIconColorOfSelectedConcern: Color green.
	self assert: (self concerns colors at: self concern) = Color green.