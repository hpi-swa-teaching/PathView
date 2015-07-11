gridding
alignToGrid: aMorph

	| position griddedPosition |
	
	position := aMorph position.
	
	griddedPosition :=  self gridPoint: position.
	
	aMorph position: griddedPosition