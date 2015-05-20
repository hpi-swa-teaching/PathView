running
runGraph
	| ncla |
	ncla := NCSimulatedAnnealingGraphLayoutAlgorithm new.
	WorldState
		addDeferredUIMessage: [ncla layoutMorph: mainWindowMorph]
