initialization
initialize
	super initialize.
	inputs := Array empty.
	dieWithInput := false.
	self lastTargetPoint: 0@0.
	self
		stepTime: self minimumStepTime;
		color: self defaultColor;
		extent: 10@10;
		connectToNearestAttachmentPoint.
