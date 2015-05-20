accessing
glyph: g
	glyph := g.
	rotation := 0.0.
	clickPoints := nil.
	endPoint := nil.
	joinPoint := g contours first first.
	transform := nil.
	self transform.
	self invalidRect: (self editBox). 