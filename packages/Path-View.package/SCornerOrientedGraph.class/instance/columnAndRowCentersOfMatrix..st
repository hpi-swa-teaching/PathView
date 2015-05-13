layout - positioning
columnAndRowCentersOfMatrix: positions
	"The matrix-coordinated in the positions-dictionary are assumed to be normalized (smallest possible position being 1@1).
	Return association (columns -> rows, 2 arrays), filled with the distance from zero-zero to the CENTER of that row/column."
	
	| widthsAndHeights widths heights |
	widthsAndHeights := self columnAndRowDimensionsOfMatrix: positions.
	widths := widthsAndHeights key.
	heights := widthsAndHeights value.
	
	"First, divide everything by two, to account for half of each row/column for its own result value. Below, double this value when adding it to the other rows."
	widths withIndexDo: [ :width :i | widths at: i put: width / 2 ].
	heights withIndexDo: [ :height :i | heights at: i put: height / 2 ].
	
	"Now add the width/height of every column/row to all columns/rows right of it / beneath it."
	widths size to: 1 by: -1 do: [ : i |
		i + 1 to: widths size do: [ :j |
			widths at: j put: (widths at: j) + ((widths at: i) * 2) ] ].
	heights size to: 1 by: -1 do: [ :i |
		i + 1 to: heights size do: [ :j |
			heights at: j put: (heights at: j) + ((heights at: i) * 2) ] ].
	
	^ widthsAndHeights