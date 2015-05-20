appearance
lineWidth: aFloat
	constraints do: [ :ea | ea endShapeWidth: aFloat ].
	line
		ifNotNil: [ line lineWidth: aFloat ]
		ifNil: [ super borderWidth: aFloat rounded ].
