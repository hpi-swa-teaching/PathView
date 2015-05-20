menu commands
openGlyphEditor
	Smalltalk at: #NCGlyphEditor ifPresent: [ :ncge | | oldKeys |
		self setProperty: #oldGlyphKeys toValue: entryNames asOrderedCollection.
		ncge openInWindow. ].
