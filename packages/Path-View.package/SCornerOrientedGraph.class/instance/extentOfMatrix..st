layout - positioning
extentOfMatrix: positions
	"Return a point denoting the number of columns and rows in the matrix built up by the values in the positions-dictionary.
	These values are given by the maximum x/y-values present in the collection of matrix-indices."
	
	| anyPoint numColumns numRows |
	anyPoint := positions values anyOne.
	numColumns := anyPoint x.
	numRows := anyPoint y.
	positions values do: [ :point |
		numColumns := point x max: numColumns.
		numRows := point y max: numRows ].
	^ numColumns @ numRows