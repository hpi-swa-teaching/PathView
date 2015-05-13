class initialization
initialize

	self registerInAppRegistry.
	TheWorldMenu registerOpenCommand: {'PathBrowser'. {self. #open}}.