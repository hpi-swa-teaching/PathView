dimension
getChildOppositeDimension: aMorph
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph height].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph width]