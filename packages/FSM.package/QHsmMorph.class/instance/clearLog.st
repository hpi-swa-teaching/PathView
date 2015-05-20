logging
clearLog
	self valueOfProperty: #logger ifPresentDo: [ :l | l clear ]
