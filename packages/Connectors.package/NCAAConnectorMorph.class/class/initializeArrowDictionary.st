arrows
initializeArrowDictionary
	"NCAAConnectorMorph initializeArrowDictionary"

	ArrowGlyphs ifNil: [ ArrowGlyphs := Dictionary new ].

	(self class organization listAtCategoryNamed: 'arrow forms') do: [ :sym |
		ArrowGlyphs at: sym put: (self perform: sym) ].

	(NCLineArrowGlyph class organization  listAtCategoryNamed: 'arrow forms') do: [ :sym |
		ArrowGlyphs at: sym put: (NCLineArrowGlyph perform: sym) ].
	
	ArrowGlyphs changed: #arrowsChanged.

	^ArrowGlyphs
