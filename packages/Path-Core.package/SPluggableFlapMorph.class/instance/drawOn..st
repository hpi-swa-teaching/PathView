drawing
drawOn: aCanvas
	self isExpanded
		ifTrue: [self drawExpandedFlapOn: aCanvas]
		ifFalse: [self drawNotExpandedFlapOn: aCanvas].