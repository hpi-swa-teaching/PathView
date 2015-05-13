dimension
oppositeDimension
	"Show the additional border of class morphs"
	self segmentationDirection == #horizontal
		ifTrue: [^ self height - 1].
	self segmentationDirection == #vertical
		ifTrue: [^ self width - 1]