accessing
borderWidth: n 
	super borderWidth: n.
	self lineMorphs
		do: [:ea |
			ea borderStyle: (self borderStyle copy trackColorFrom: self).
			ea borderWidth: n ]
