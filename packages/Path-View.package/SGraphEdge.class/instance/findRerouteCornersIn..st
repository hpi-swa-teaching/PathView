calculations
findRerouteCornersIn: nodeToSegmentNumber
	"Return corners (symbols, #topLeft, #bottomLeft, #topRight, #bottomRight), that should be used to reroute the receiver-edge.
	The argument is an association from the intersected node to the segment in the receiver-edge, that intersects the node (like returned by #intersectingNodesIn:)."
	
	| segment bounds intersections |
	bounds := nodeToSegmentNumber key absoluteBounds.
	segment := self segment: nodeToSegmentNumber value.
	intersections := bounds intersectionsWithLineFrom: segment key to: segment value.
	intersections ifEmpty: [ ^ #() ].
	intersections size = 1 ifTrue: [ intersections add: intersections anyOne ]. "Don't know, whether this can happen... Be sure."
	^ intersections collect: [ :point | bounds cornerNearestTo: point ]