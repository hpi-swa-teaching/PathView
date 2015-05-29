asserting
assertCornerConsistency
	"For all nodes, check that their corneringNodes are assigned consistently. Throw an error, if not so."
	
	SClassDiagram debugShowSubgraphs ifTrue: [
		nodes do: [ :node |
			node corneringNodes withIndexDo: [ :cornering :i |
				cornering ifNotNil: [
					(cornering corneringNodes
						at: (i - 1 + 4) \\ 8 + 1) "The opposite corner"
						== node
						ifFalse: [ "Inconsistency!"
							self error: 'Inconsistency in assigned corners detected' ] ] ] ] ].