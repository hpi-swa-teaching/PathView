building
createLabelMorph: aString

	self labelMorph: (StringMorph contents: aString).
	self addMorph: self labelMorph.
	self extent: (self labelMorph fullBounds corner * self class defaultExtensionFactor).