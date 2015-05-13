dimension
setChild: aMorph dimension: anInteger
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph width: anInteger].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph height: anInteger]