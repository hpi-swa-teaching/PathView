instance creation
open
	SProject isNullProjectSelected
		ifTrue: [self inform: 'Please choose a project first and start PathFinder again.'.
				^ SProjectChooser open].
	^ super open.