initialization
initialize
	super initialize.
	ui := DTRSuggestionUi new.
	ui setupUi: self.
	self initializeButton.
	self initializeWindow