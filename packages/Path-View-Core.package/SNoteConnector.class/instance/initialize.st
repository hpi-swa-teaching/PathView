initialization
initialize
	
	super initialize.
	self flag: #ag. "When dashed line for smooth-curve is implemented, remove sending beStraightSegments here."
	self
		dashedLine: true;
		beStraightSegments. "Remove being smooth-curve, as it is not implemented for dashed lines."