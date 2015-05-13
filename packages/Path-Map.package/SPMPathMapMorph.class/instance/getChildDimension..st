dimension
getChildDimension: aMorph
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph width].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph height]