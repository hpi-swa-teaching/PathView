initialize-release
initialize
	super initialize.
	self 
		isClosed: false;
		contents: Set new.