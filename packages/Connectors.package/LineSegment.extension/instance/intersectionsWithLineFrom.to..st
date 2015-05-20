*connectors-intersection
intersectionsWithLineFrom: e1 to: e2
	"Answer the set of intersections, if any"
	| intersection |
	intersection := self intersectionWith: (LineSegment from: e1 to: e2).
	^intersection ifNotNil: [ { intersection } ] ifNil: [ {} ].