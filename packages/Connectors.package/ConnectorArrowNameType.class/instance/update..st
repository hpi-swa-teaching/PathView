initialization
update: anAspect
	anAspect == #arrowsChanged
		ifTrue: [ self class updateNames ].
	super update: anAspect.
