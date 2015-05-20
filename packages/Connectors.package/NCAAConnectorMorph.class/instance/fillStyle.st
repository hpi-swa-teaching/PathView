appearance
fillStyle
	^line ifNotNil: [ line fillStyle ]
		ifNil: [ super fillStyle ]