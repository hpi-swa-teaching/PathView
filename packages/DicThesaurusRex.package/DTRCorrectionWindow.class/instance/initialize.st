initialize-release
initialize
	super initialize.
	methodSelected := true.
	methodIndex := 0.
	spellChecker := DTRCodeSpellChecker new.
	self initializeUi