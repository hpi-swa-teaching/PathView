visualization
linearLabelFor: aPosition
	^ ((DateAndTime fromSeconds: (super linearLabelFor: aPosition) 
		asInteger) asDate) asString