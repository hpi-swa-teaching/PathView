event handling
focus
	
	self currentHand newKeyboardFocus: self.
	self highlightClassMorphs.
	self changed: #classMorphSelected.