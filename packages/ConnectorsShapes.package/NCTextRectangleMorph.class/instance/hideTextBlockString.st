menus
hideTextBlockString
	^ (self lowerTextHidden
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'hide lower text' translated