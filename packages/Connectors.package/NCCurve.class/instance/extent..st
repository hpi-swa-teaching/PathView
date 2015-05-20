accessing
extent: aPoint 
	self scale: self scale * (aPoint asFloatPoint / self bounds extent)