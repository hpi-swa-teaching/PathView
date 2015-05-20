updating
update: anAspect
	| currentName newKeys |
	currentName := self nameOfGraphic.
	super update: anAspect.
	(anAspect == #arrowsChanged) ifFalse: [ ^self ].
	self updateFromGlyphDictionary.
	currentIndex := entryNames indexOf: currentName ifAbsent: [ 1].
	self valueOfProperty: #oldGlyphKeys ifPresentDo: [ :oldKeys |
		newKeys := entryNames difference: oldKeys.
		self removeProperty: #oldGlyphKeys.
		newKeys isEmpty ifTrue: [ ^self ].
		currentIndex := entryNames indexOf: newKeys first.
		self updateThumbnail].
