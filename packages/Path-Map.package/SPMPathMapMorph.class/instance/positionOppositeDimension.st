dimension
positionOppositeDimension
	self segmentationDirection == #horizontal
		ifTrue: [^ self position y].
	self segmentationDirection == #vertical
		ifTrue: [^ self position x]