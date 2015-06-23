geometry
extendLeftBy: aValue
	
	self extent: self extent + ((aValue + self class extensionOffset) @ 0).
	self left: self left - (aValue + self class extensionOffset)
