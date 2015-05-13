dimension
oppositeDimension
	self segmentationDirection == #horizontal
		ifTrue: [^ self height].
	self segmentationDirection == #vertical
		ifTrue: [^ self width]