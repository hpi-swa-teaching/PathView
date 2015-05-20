menu commands
updateFromGlyphDictionary
	| currentName formDict |
	currentName := self nameOfGraphic.
	formDict := self buildFormDict.
	currentIndex := entryNames indexOf: currentName ifAbsent: [ 1].
	self updateThumbnail.
	^formDict.
