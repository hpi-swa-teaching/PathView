accessing
fillStyle: n 
	self lineMorphs
		do: [:ea | | bs |
			bs := ea borderStyle.
			ea fillStyle: n.
			ea borderStyle: bs ].
	super fillStyle: n 