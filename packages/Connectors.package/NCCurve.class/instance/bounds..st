accessing
bounds: aRectangle
	self updateBounds.
	self scale: (self scale * ((aRectangle width / (bounds width max: 1)) @ (aRectangle height / (bounds height max: 1))))