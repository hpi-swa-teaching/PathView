toolbar-actions
canScaleMinimapSmaller
	
	^ minimap 
		ifNotNilDo: [ minimap scalingFactor > 0 ]
		ifNil: [ false]