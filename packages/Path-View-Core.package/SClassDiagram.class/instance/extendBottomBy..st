geometry
extendBottomBy: aValue

	self extent: self extent + (0 @ (aValue + self class extensionOffset))
	