*connectors-point functions
scaleToNoGreaterThan: anotherPoint
	"Answer a Point with the same x/y ratio as me, but less than or equal to anotherPoint."
	| ratio |
	x isZero ifTrue: [ ^0 @ anotherPoint y ].
	y isZero ifTrue: [ ^anotherPoint x @ 0 ].
	ratio := anotherPoint / self.
	^ratio x > ratio y
		ifTrue: [ self * ratio y ]
		ifFalse: [ self * ratio x ].
