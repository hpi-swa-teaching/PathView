toolbar-actions
canScaleMinimapBigger
	
	^ minimap 
		ifNil: [ false ]
		ifNotNil: [ minimap scalingFactor + self class minimapScaleStep < 1 ]