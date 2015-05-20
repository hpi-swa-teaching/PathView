constraints
addShape: aMorph
	| newMorph |
	aMorph ifNil: [ ^self ].
	newMorph := super addShape: aMorph.
	newMorph endShapeWidth: owner lineWidth.
	newMorph heading: self heading.
	newMorph referencePosition: self lastTargetPoint.
	self computeLineAttachmentPoint.
	self applyConstraint: lastTarget.
	self layoutChanged.