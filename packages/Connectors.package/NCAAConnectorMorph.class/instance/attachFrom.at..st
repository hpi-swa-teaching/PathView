protected-notifications
attachFrom: aConstraintMorph at: aPoint
	(constraints includes: aConstraintMorph) ifTrue: [ self error: 'can''t happen' ].
	"I don't want my labels to wander"
	(aConstraintMorph isLabelConstraint)
		ifTrue: [ ^self attachFrom: aConstraintMorph atNearestSpecTo: aPoint ].
	(aConstraintMorph isLineConstraint)
		ifTrue: [ aConstraintMorph connectToNearestPoint ]
		ifFalse: [ super attachFrom: aConstraintMorph at: aPoint ]
