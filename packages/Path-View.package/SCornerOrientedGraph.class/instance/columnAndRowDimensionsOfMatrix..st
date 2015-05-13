layout - positioning
columnAndRowDimensionsOfMatrix: positions
	"The matrix-coordinated in the positions-dictionary are assumed to be normalized (smallest possible position being 1@1).
	Return association (columns -> rows, 2 arrays), filled with the widths/heights of the matrix-columns/rows."
	
	| extent rows columns |
	extent := self extentOfMatrix: positions.
	columns := Array new: extent x withAll: 0.
	rows := Array new: extent y withAll: 0.
	positions keysAndValuesDo: [ :node :position |
		columns at: position x put: (node extent x max: (columns at: position x)).
		rows at: position y put: (node extent y max: (rows at: position y)) ].
	^ columns -> rows