arrows
simpleXArrow
	| x1 x2 x3 x4 |
	x1 := self xElement.
	x2 := x1 * (1@ -1).
	x3 := x1 * (-1@ -1).
	x4 := x1 * (-1@1).
	
^(NCLineArrowGlyph withContours: ((Array new: 4) at: 1 put: x1; at: 2 put: x2; at: 3 put: x3; at: 4 put: x4; yourself)) 
	offset: 0@0.6;
	defaultScale: 3.0;
	yourself