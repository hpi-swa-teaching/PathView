layout graph-based
deleteDebugSubmorphs
	
	self submorphs
		select: [ :morph | morph isKindOf: SDebugRectangleMorph ]
		thenDo: #delete