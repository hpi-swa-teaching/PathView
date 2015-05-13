layout graph-based
pinVariable: aSymbol inClass: aClass
	
	self
		morphForClass: aClass
		do: [ :morph | morph pinVariable: aClass -> aSymbol ].