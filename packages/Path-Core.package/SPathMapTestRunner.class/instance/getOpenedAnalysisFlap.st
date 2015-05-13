utilities
getOpenedAnalysisFlap
	self flag: #mpe. "Refactor the fragile code without morphic methods!"
	^ self windowMorph paneMorphs 
		detect: [:each | (each isKindOf: SPluggableFlapMorph) and: [each isExpanded]] 
		ifNone: [nil].