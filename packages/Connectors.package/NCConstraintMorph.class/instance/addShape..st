constraints
addShape: aMorph
	| newMorph |
	aMorph ifNil: [ ^self ].
	newMorph := aMorph duplicate center: self center.
	newMorph endShapeColor: self endShapeColor.
	newMorph endShapeBorderColor: self endShapeBorderColor.
	self addMorphFront: newMorph.
	self forceRedraw.
	^newMorph