layout - assigning
recursivelyAttachTo: node from: sourceSet
	
	(sourceSet includes: node)
		ifTrue: [
			sourceSet remove: node.
			self assignCornersOf: node.
			node neighborNodes do: [ :neighbor |
				self recursivelyAttachTo: neighbor from: sourceSet ] ].