spec commands
switchMultipleColorsPerMethod
	self 
		multipleColorsPerMethod: self multipleColorsPerMethod not;
		changed: #multipleColorsPerMethod;
		redrawPathMapIfPossible.