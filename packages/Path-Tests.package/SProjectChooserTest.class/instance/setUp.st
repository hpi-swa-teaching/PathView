running
setUp
	super setUp.
	SProject initialize.
	self projectChooser: SProjectChooser open.
	self projectChooser enableTestMode.