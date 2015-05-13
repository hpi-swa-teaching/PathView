toolbar-actions
canScaleMinimapBigger
	
	minimap ifNil: [^ false].
	^ minimap scalingFactor + self class minimapScaleStep < 1