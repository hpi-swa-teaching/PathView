*connectors-connection
attachFrom: aConstraintMorph atNearestSpecTo: aPoint 
	| spec |
	spec := self attachmentPointSpecNearest: aPoint.
	spec first == #attachmentPointForEmbeddedMorph:
		ifTrue: [aConstraintMorph connectToMorph: spec second usingSpec: {#attachmentPointWhenEmbedded}]
		ifFalse: [aConstraintMorph connectToMorph: self usingSpec: spec]