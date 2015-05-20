initialization
vertices: verts color: aColor borderWidth: borderWidthInteger borderColor: anotherColor 
	self fillStyle: anotherColor.
	self borderColor: anotherColor.
	self lineWidth1: borderWidthInteger.
	borderWidth := 0.
	self setVertices: verts