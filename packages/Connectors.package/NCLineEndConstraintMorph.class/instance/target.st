constraints
target
	"Answer an Array with my target point and angle"
	| pt |
	pt := "self griddedPoint:" self targetPoint.
	^{ pt . 
		(self nextVertex - pt) degrees.
		self inputOwnerHash
	 }