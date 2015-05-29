filtering
rejectAnchorNodes: collectionOfNodes
	
	^ collectionOfNodes reject: [ :node |
		(self anchorNodes includes: node) 
			or: [ | isAnchorNode |
				isAnchorNode := false.
				self pseudoEdgesDo: [ :pseudoEdge |
				isAnchorNode := isAnchorNode or: [ pseudoEdge anchorNodes includes: node ] ].
				isAnchorNode ] ]