toolbar-actions
canScaleMinimapSmaller
	
	minimap ifNil: [^ false].
	^ minimap scalingFactor > 0