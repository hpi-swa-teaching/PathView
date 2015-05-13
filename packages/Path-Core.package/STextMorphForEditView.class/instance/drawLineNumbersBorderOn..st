drawing
drawLineNumbersBorderOn: aCanvas

	| xOffset |
	xOffset := 4.
	aCanvas
		line: (self margins left - xOffset) @ aCanvas clipRect top
		to: (self margins left - xOffset) @ aCanvas clipRect bottom
		width: 1
		color: Color gray.