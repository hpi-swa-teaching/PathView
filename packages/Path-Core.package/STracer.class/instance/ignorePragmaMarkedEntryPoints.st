helper
ignorePragmaMarkedEntryPoints
	self entryPoints: (self entryPoints select: [:each | 
		self class ignoredPragmas 
			allSatisfy: [:pragma | (each compiledMethod pragmaAt: pragma) isNil]]).