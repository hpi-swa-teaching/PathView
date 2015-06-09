debugging
debugBendPoints
	
	bendPositions withIndexDo: [ :point :i |
		self debugPoint: point text: i asString ].