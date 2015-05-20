*connectors-buttons
makerButtonImageOfColor: aColor
	"Answer a Form for use on a button"
	^(self imageForm: 32
		backgroundColor: aColor
		forRectangle: self fullBounds)
				replaceColor: aColor
				withColor: Color transparent