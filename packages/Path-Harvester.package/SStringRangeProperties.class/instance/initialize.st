initialize-release
initialize
	super initialize.
	self 
		spellingOkay: true; 
		length: 0; 
		includesNumbers: false; 
		includesSeparators: false;
		isAsciiString: true; 
		contentTypes: Set new.