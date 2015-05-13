dimension
setChild: aMorph oppositeDimension: anInteger
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph height: anInteger].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph width: anInteger]