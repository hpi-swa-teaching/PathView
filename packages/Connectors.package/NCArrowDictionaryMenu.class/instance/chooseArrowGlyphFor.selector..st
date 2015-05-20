menu commands
chooseArrowGlyphFor: client selector: sel
	| formDict bb |
	self glyphDictionary addDependent: self.
	entryNames := #().
	currentIndex := 0.
	formDict := self buildFormDict.
	super initializeFor: nil fromDictionary: formDict.
	target := client.
	self selector: sel.
	bb := SimpleButtonMorph new target: self;
				 borderColor: Color black.
	self addMorph: (bb label: 'OK' translated;
			 actionSelector: #okay)
		fullFrame: (LayoutFrame fractions: (0.5 @ 0 extent: 0 @ 0)
				offsets: (-80 @ 4 extent: bb extent)).
