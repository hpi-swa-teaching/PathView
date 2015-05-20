menus
chooseArrowGlyphFor: endIndex 
	| menu |
	menu := NCArrowDictionaryMenu chooseArrowGlyphFor: self selector: #setGlyph:forEnd:.
	menu argument: endIndex
	