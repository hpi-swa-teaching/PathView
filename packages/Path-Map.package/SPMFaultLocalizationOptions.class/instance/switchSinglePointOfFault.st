spec commands
switchSinglePointOfFault
	self 
		singlePointOfFault: self singlePointOfFault not;
		changed: #singlePointOfFault;
		redrawPathMapIfPossible.