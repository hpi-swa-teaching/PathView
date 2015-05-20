appearance
color: aColor
	constraints do: [ :ea | ea endShapeColor: aColor ].
	^line ifNotNil: [ line lineColor: aColor ]
		ifNil: [ super color: aColor ]