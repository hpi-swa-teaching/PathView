building
buildFrame
	self width: self width + (self class borderWidth * 2).
	self height: self height + 24.
	self color: self class frameColor.
	self borderStyle: (BorderStyle complexAltRaised width: self class borderWidth).
	self submorphs do: [:each | each position: (each position x + self class borderWidth) @ (each position y + 21)].
