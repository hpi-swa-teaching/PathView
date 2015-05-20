accessing
maximumImageExtent
	^ self valueOfProperty: #maximumImageExtent ifAbsent: [ | sketch sketchExtent |
		sketch := self sketch.
		(sketch isNil or: [ (sketchExtent := sketch form extent) isZero ])
			ifTrue: [ 30@30 ]
			ifFalse: [ sketchExtent ]
		]