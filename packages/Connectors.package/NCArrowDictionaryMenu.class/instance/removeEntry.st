menu commands
removeEntry
	self glyphDictionary
		removeKey: self nameOfGraphic;
		changed: #arrowsChanged.
	super removeEntry.
