visual properties
changePixelsOfColor: c toColor: newColor
	self sketch ifNotNilDo: [ :sk | sk changePixelsOfColor: c toColor: newColor ]
