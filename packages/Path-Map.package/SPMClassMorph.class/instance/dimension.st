dimension
dimension
	"Show the additional border of class morphs"
	self segmentationDirection == #horizontal
		ifTrue: [^ self width - 1].
	self segmentationDirection == #vertical
		ifTrue: [^ self height - 1]