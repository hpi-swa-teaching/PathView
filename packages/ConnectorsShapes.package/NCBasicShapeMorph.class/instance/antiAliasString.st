menus
antiAliasString
	^ (self drawAntialiased
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'smooth edges' translated 