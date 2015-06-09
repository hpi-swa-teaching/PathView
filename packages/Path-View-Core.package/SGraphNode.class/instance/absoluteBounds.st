accessing
absoluteBounds
	"This method goes up the subgraph-hierarchy, until there is no containing subgraphNode anymore..
	On the way, the relative positions of all SubgraphNodes are added up, to calculate the position of the receiver in the coordinate system the PasteUpMorph."
	
	| bounds |
	bounds := self bounds.
	self subgraphNode ifNil: [ ^ bounds ].
	^ self subgraphNode
		ifNil: [ ^ nil ] "This means, that this node is an element of the outermost graph, so no correct answer can be provided."
		ifNotNilDo: [ :mySubgraphNode |
			bounds translateBy: mySubgraphNode absoluteBounds origin ]