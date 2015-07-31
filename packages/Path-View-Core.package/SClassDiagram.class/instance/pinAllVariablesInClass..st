layout graph-based
pinAllVariablesInClass: aClass
	
	self
		morphForClass: aClass
		do: [ :morph | morph pinAllVariables ]