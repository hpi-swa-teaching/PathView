dimension
setChild: aMorph position: anInteger oppositePosition: anOppInteger
	self segmentationDirection == #horizontal
		ifTrue: [^ aMorph position: anInteger@anOppInteger].
	self segmentationDirection == #vertical
		ifTrue: [^ aMorph position: anOppInteger@anInteger]