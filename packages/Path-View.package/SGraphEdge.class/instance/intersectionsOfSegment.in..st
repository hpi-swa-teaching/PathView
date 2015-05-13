calculations
intersectionsOfSegment: segmentNumber in: collectionOfNodes
	"Select those nodes from collectionOfNodes, that are intersected by the given segment of the receiver-edge.
	The intersected nodes will be sorted by the ordering of their intersection (by their distance from the segment-start).
	The segmentNumber is 1-based (the first segment is represented by 1).
	For correct results, the fromNode and toNode of the receiver should not be included in collectionOfNodes."
	
	| segment intersections |
	intersections := OrderedCollection new.
	segment := self segment: segmentNumber.
	collectionOfNodes do: [ :node |
		(node absoluteBounds intersectsLineFrom: segment key to: segment value)
			ifTrue: [ intersections add: node ] ].
	^ intersections
		asSortedCollection: [ :node1 :node2 |
			(segment key dist: node1 center) <= (segment key dist: node2 center) ]