toolbar-actions
minimapSmaller
	
	minimap scalingFactor: minimap scalingFactor - self class minimapScaleStep.
	self canScaleMinimapSmaller ifFalse: [ minimap hide ].
	self changed: #canScaleMinimapSmaller.