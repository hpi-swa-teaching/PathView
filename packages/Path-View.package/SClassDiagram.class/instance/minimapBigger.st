toolbar-actions
minimapBigger
	
	minimap show.
	minimap scalingFactor: minimap scalingFactor + self class minimapScaleStep.
	self changed: #canScaleMinimapBigger.