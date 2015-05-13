dimension
setChild: aMorph position: anInteger
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph position: anInteger@self position y].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph position: self position x@anInteger]