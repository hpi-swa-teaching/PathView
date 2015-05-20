menus
setGlyph: anArrowGlyph forEnd: endIndex
	| newArrows |
	newArrows := line arrows copy.
	newArrows at: endIndex put: anArrowGlyph.
	line arrows: newArrows