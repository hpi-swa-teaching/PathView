geometry
closestOrthogonalPointTo: aPoint
	|  pt tr |
	pt := self stateRectangle closestOrthogonalPointTo: aPoint.
	tr := self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y == self stateRectangle top ])
		ifTrue: [ pt := pt x @ self top ].
	^pt.