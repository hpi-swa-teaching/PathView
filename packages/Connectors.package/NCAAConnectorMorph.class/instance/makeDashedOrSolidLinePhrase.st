menus
makeDashedOrSolidLinePhrase
	^line dashedBorder
		ifNil: [ 'make dashed line' ]
		ifNotNil: [ 'make solid line' ].
