initialization
initializeString: aString
	
	self
		string: aString
		wrap: false;
		dieWithInput: true;
		forceTextLocked: true;
		acceptOnCR: false;
		acceptOnFocusLoss: false.