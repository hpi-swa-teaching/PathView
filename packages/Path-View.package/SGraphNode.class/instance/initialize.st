initialization
initialize
	
	super initialize.
	edges := Set new.
	neighborNodes := Set new.
	position := 0 @ 0.
	corneringNodes := Array new: 8. "starting from top-left corner, go clockwise. Includes the 4 corners and the 4 centers of the sides."