dimension
dimension
	self segmentationDirection == #horizontal
		ifTrue: [^ self width].
	self segmentationDirection == #vertical
		ifTrue: [^ self height]