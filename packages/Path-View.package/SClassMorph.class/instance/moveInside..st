layout force-based
moveInside: aRectangle
	"Use the current movement-vector to change the receiver's position.
	Make sure to keep the new position inside aRectangle."
	
	self position: 
		((self position + self vector)
			adhereTo: (aRectangle insetOriginBy: 0 cornerBy: self extent)).