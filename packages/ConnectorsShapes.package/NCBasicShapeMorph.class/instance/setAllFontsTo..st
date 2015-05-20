text morphs-accessing
setAllFontsTo: aFont
	self textMorphs do: [ :ea |
		ea beAllFont: aFont;
		composeToBounds;
		layoutChanged; fullBounds ].
	self stringMorphs do: [ :ea | ea font: aFont; layoutChanged; fullBounds ].
	self setProperty: #allFonts toValue: aFont.
	self adjustSubmorphPositions.
