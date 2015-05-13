tree functions
collectAllColorsFromNodes
	| methodColors |
	methodColors := self getAllNodes inject: Dictionary new into: [:dict :each | 
		dict 
			at: each methodReference put: (self getColorFromMap: each); 
			yourself].
	^ methodColors select: [:each | each value notNil and: [each value ~= Color white]]