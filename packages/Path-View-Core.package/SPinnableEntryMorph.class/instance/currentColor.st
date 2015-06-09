pinning
currentColor
	
	^ pinned & pinStateVisible
		ifTrue: [ self class pinnedColor ]
		ifFalse: [ super currentColor ]