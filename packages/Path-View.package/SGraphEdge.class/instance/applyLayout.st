layout
applyLayout
	
	| realMorph |realMorph := self morph.
	self originalEdge straightenMorph.
	"self sortBendPositions."
	realMorph setVertices: 
		{ realMorph vertices first }, bendPositions asArray, { realMorph vertices last }.