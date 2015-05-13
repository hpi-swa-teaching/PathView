*Path-Core-override
drawBackgroundForMulti: row on: aCanvas 
	"shade the background paler, if this row is selected, but not the current selected row"
	| selectionDrawBounds thisColor |
	thisColor := selectedRow = row
		ifTrue: [ self class listSelectionColor ]
		ifFalse: [ self class listSelectionColor lighter ].
	selectionDrawBounds := self drawBoundsForRow: row.
	selectionDrawBounds := selectionDrawBounds intersect: self bounds.
	aCanvas
		fillRectangle: selectionDrawBounds
		color: thisColor