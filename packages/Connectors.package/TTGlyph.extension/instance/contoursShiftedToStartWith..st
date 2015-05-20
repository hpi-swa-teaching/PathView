*connectors
contoursShiftedToStartWith: aPoint
	"Answer a shifted version of my contours, in which the first and last points in the first contour are aPoint."
	| newContours shifted firstFound pivotFound |
	newContours := OrderedCollection new.
	firstFound := false.
	contours withIndexDo: [ :c :cIndex | | pointIndex |
		pivotFound := true.
		pointIndex := (1 to: c size by: 3) detect: [ :i | (c at: i) = aPoint ] ifNone: [ pivotFound := false. 1 ].
		pivotFound ifTrue: [
			shifted := ShortPointArray new: c size.
			shifted replaceFrom: 1 to: (c size - pointIndex) + 1
				with: c startingAt: pointIndex.
			shifted replaceFrom: (c size - pointIndex) + 2 to: shifted size
				with: c startingAt: 1.
			firstFound ifFalse: [ newContours addFirst: shifted. firstFound := true ]
				ifTrue: [ newContours addLast: shifted ].
		] ifFalse: [ newContours addLast: c ].
	].
	^newContours asArray