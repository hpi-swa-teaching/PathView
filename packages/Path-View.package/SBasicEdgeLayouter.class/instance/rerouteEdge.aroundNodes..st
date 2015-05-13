layouting
rerouteEdge: edge aroundNodes: collectionOfNodes
	"Repeat the following, until no more nodes are intersected by the edge.
	The loop is guarded by an additional variable to avoid infinite looping.
	1. Find all nodes that are cut be the edge, in the correct ordering.
	2. Take the first of these nodes and reroute the edge around that node."
	
	| intersectingNodes guard |
	guard := 0.
	[ (intersectingNodes := edge intersectingNodesIn: collectionOfNodes) notEmpty
	and: [ guard := guard + 1. guard < self class maxRerouteIterations ] ]
		whileTrue: [
			self haltOnce.
			self
				rerouteEdge: edge
				aroundNode: intersectingNodes first ].