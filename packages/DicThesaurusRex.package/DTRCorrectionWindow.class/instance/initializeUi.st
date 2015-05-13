initialize-release
initializeUi
	ui := DTRCorrectionWindowUi new.
	ui setupUi: self.
	self
		replaceMethodEditWithPluggableTextMorphPlus;
		initializeButton;
		initializeWindow