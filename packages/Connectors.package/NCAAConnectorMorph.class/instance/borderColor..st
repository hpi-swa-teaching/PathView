appearance
borderColor: aColor
	constraints do: [ :ea | ea endShapeBorderColor: aColor ].
	^line ifNotNil: [ line lineBorderColor: aColor ]
		ifNil: [ super borderColor: aColor ]