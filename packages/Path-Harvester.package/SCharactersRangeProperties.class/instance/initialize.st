initialize-release
initialize
	super initialize.
	self 
		range: nil;
		includesLetters: false; 
		includesDigits: false; 
		includesSeparators: false;
		includesSpecials: false; 
		lowercase: false;
		uppercase: false;
		httpSafe: true.