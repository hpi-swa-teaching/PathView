layout - positioning
extentOfMatrix
	
	| anyPoint numColumns numRows |
	anyPoint := nodesToPositions at: self nodes anyOne.
	numColumns := anyPoint x.
	numRows := anyPoint y.
	positionsToNodes keysDo: [ :point |
		numColumns := point x max: numColumns.
		numRows := point y max: numRows ].
	^ numColumns @ numRows