appearance
borderWidth: aFloat
	constraints do: [ :ea | ea endShapeBorderWidth: aFloat rounded ].
	line
		ifNotNil: [ line lineBorderWidth: aFloat rounded ]
		ifNil: [ super borderWidth: aFloat rounded ].
