geometry
closestPointTo: aPoint
	| pt tr |
	pt := self stateRectangle closestPointTo: aPoint.
	tr := self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y < self bottom ])
		ifTrue: [ pt := pt x @ self top ].
	^pt.