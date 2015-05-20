contours library
xorGateContours
	"
	(NCCurveMorph withContours: NCCurveMorph xorGateContours) openInHand
	"
	^{ 
	{
		-10@100. 15@50. -10@0.
		-10@0. -5@0. -5@0.
		-5@0. 20@50. -5@100.
		-5@100. -5@100. -10@100.
	}.
	{
		0@0. 80@0. 100@50.
		100@50. 80@100. 0@100.
		0@100. 25@50. 0@0.
	}
	 } 