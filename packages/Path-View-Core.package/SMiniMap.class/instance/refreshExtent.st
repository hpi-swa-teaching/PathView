refreshing
refreshExtent
	
	| oldExtent extent |
	oldExtent := self extent.
	extent := viewedMorph extent * self scalingFactor.
	thumbnailMorph extent: extent.
	self refreshViewport.