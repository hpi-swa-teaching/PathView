accessing
borderColor: n 
	self lineMorphs do: [:ea | ea borderColor: n].
	super borderColor: n 