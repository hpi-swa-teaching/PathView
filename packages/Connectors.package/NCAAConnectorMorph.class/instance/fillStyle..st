appearance
fillStyle: aFillStyle
	^line ifNotNil: [ line fillStyle: aFillStyle ]
		ifNil: [ super fillStyle: aFillStyle ]