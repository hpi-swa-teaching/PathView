instance-creation
open
	SProject isNullProjectSelected
		ifTrue: [self inform: 'Please choose a project first and start PathMap again.'.
				^ SProjectChooser open].
	^ super open.