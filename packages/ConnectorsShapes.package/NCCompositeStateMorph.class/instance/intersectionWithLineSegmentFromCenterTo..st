geometry
intersectionWithLineSegmentFromCenterTo: aPoint 
	"This is close, except for upper left corner"
	| pt tr |
	pt := self stateRectangle intersectionWithLineSegmentFromCenterTo: aPoint .
	tr := self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y < self bottom ])
		ifTrue: [ pt := super intersectionWithLineSegmentFromCenterTo: aPoint.
			(pt x < tr left) ifTrue: [ pt := tr left @ pt y ].
		].
	^pt.