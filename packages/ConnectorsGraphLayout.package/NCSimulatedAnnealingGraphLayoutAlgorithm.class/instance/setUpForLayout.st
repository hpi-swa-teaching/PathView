layout
setUpForLayout
	super setUpForLayout.   "super setUpForLayout sets the scale, which avoids bounds errors"
	self setLambda.
	temperature := initialTemperature.
