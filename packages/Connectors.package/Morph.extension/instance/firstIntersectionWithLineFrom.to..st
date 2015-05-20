*connectors-geometry
firstIntersectionWithLineFrom: start to: end
	|  intersections |
	intersections := self fullBounds intersectionsWithLineFrom: start to: end.
	intersections isEmpty ifTrue: [ ^nil ].
	^intersections detectMin: [ :ea | ea dist: start ] 