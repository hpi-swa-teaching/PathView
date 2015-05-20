menus
smoothingOnOrOffPhrase
	^ self transformMorph isSmoothingOn
		ifTrue: ['turn smoothing off' translated]
		ifFalse: ['turn smoothing on' translated]