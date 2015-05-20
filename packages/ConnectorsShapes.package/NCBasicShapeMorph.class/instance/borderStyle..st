accessing
borderStyle: n 
	self lineMorphs
		do: [:ea | ea borderStyle: n].
	super borderStyle: n 