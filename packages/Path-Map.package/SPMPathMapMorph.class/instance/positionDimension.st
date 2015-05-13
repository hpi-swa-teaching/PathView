dimension
positionDimension
	self segmentationDirection == #horizontal
		ifTrue: [^ self position x].
	self segmentationDirection == #vertical
		ifTrue: [^ self position y]