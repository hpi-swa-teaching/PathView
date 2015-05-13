accessing
childNodesForPc: aNumber 
	^ (self childNodeWrappers
		select: [:each | each parentPc = aNumber])
		keys