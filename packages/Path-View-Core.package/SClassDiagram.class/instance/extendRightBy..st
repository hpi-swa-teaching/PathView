geometry
extendRightBy: aValue

	self extent: self extent + ((aValue + self class extensionOffset) @ 0).
	