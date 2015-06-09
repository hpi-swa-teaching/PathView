layout - positioning - naive
assignPositionsNaively
	"Pick any node and position all cornering nodes recursively going from there, always relative to a single other, already positioned element.
	Can quickly result in overlapping nodes, e.g. if to close nodes are too big. Only the size of a single neighbor is taken into account when positioning a node."
	
	| node |
	node := nodes anyOne.
	node position: 0 @ 0.
	self positionNeighborsOf: node alreadyPositioned: (Set with: node).
	self normalizeElements.