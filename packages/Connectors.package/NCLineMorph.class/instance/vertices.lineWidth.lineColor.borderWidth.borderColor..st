initialization
vertices: verts lineWidth: w lineColor: c borderWidth: bw borderColor: bc 
	fillStyle := c.
	color := c asColor.
	borderColor := bc.
	self lineWidth1: w.
	borderWidth := bw asInteger.
	self setVertices: verts