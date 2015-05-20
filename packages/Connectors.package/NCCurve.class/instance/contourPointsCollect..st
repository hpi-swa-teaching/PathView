accessing contours
contourPointsCollect: aBlock 
	^ Array
		streamContents: [:s | self contours
				do: [:c | c
						do: [:p | s
								nextPut: (aBlock value: p)]]]