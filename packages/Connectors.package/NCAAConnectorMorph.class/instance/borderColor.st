appearance
borderColor
	^line ifNotNil: [ line lineBorderColor  ]
		ifNil: [ super borderColor ]