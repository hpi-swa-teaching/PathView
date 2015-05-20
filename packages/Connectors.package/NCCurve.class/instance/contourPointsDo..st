accessing contours
contourPointsDo: aBlock 
	self contours do: [:c | c do: aBlock]