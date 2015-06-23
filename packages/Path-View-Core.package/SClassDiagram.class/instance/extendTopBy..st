geometry
extendTopBy: aValue
	
	self extent: self extent + (0 @ (aValue + self class extensionOffset)).
	self top: self top - (aValue + self class extensionOffset)