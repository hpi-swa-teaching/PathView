accessing
defaultColor
	| cc |
	(cc := self valueOfProperty: #defaultColor) ifNotNil: [^cc].
	Display depth > 2 
		ifTrue: 
			[graphModel ifNotNil: 
					[(graphModel ~~ self and: [graphModel isInMemory]) 
						ifTrue: [cc := Color colorFrom: graphModel defaultBackgroundColor]]].
	cc ifNil: [cc := Color white].
	^cc