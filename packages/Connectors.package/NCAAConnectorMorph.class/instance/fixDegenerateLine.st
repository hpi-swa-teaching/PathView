submorphs-add/remove
fixDegenerateLine
	"If I have two vertices, and both are connected to the same object, 
	and they're both attached to the same side of the object, or are only a 
	few pixels apart, 
	then add a couple more vertices and space them so I can be grabbed. 
	Two policy settings affect this behavior: 
	minimumVertexSpacing -- minimum distance between endpoints of 
	a 2-vertex connector 
	minimumSameTargetOutsetSpacing -- minimum distance to offset 
	vertices added for 2-vertex connectors connected to the same side of 
	the same object."
	| sourceMorph v1 side1 v2 side2 minVertexSpacing spacingToMorph midpoint vertexSpacing box newPoints rotate flip |
	flip := false.
	line vertices size = 2
		ifFalse: [^ self].
	sourceMorph := self sourceMorph.
	(sourceMorph isNil
			or: [sourceMorph ~~ self destinationMorph])
		ifTrue: [^ self].
	v1 := self firstVertex.
	side1 := sourceMorph bounds sideNearestTo: v1.
	v2 := self lastVertex.
	side2 := sourceMorph bounds sideNearestTo: v2.
	minVertexSpacing := self minimumVertexSpacing.
	spacingToMorph := self minimumSameTargetOutsetSpacing.
	midpoint := v1 + v2 / 2.
	vertexSpacing := v1 dist: v2.
	side1 = side2
		ifTrue: [box := 0 @ 0 extent: (vertexSpacing max: minVertexSpacing)
							@ spacingToMorph.
			box := box align: box topCenter with: midpoint.
			newPoints := box corners.
			side1 caseOf: {
				[#left] -> 
					[rotate := #right.
					flip := v1 y > v2 y].
				[#right] -> 
					[rotate := #left.
					flip := v1 y < v2 y].
				[#bottom] -> 
					[rotate := nil.
					flip := v1 x > v2 x].
				[#top] -> 
					[rotate := #pi.
					flip := v1 x < v2 x]}]
		ifFalse: [vertexSpacing < minVertexSpacing
				ifFalse: [^ self].
			newPoints := {midpoint + (0 @ minVertexSpacing). midpoint + (0 @ (minVertexSpacing + spacingToMorph)). midpoint + (minVertexSpacing + spacingToMorph @ (minVertexSpacing + spacingToMorph)). midpoint + (minVertexSpacing + spacingToMorph @ 0). midpoint + (minVertexSpacing @ 0)}.
			side1 , side2 caseOf: {
				['bottomright'] -> 
					[rotate := nil.
					flip := false].
				['righttop'] -> 
					[rotate := #left.
					flip := false].
				['topleft'] -> 
					[rotate := #pi.
					flip := false].
				['leftbottom'] -> 
					[rotate := #right.
					flip := false].
				['rightbottom'] -> 
					[rotate := nil.
					flip := true].
				['topright'] -> 
					[rotate := #left.
					flip := true].
				['lefttop'] -> 
					[rotate := #pi.
					flip := true].
				['bottomleft'] -> 
					[rotate := #right.
					flip := true]  } otherwise: [] ] .
	rotate
		ifNotNil: [newPoints := newPoints
						collect: [:p | p rotateBy: rotate centerAt: midpoint]].
	flip
		ifTrue: [newPoints := newPoints reversed ].
		
"	self log: #debug items: { v1. side1. v2. side2. newPoints. rotate. flip }."

	self setVertices: newPoints