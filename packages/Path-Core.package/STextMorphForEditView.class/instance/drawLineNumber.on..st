drawing
drawLineNumber: aNumber on: aCanvas

	| str line |
	str := self getStringFor: aNumber.
	line := self paragraph lines at: aNumber.
	aCanvas
		drawString: str
		from: 1
		to: str size
		at: (self position x @ (line top + 2))
		font: Preferences standardCodeFont
		color: Color gray.