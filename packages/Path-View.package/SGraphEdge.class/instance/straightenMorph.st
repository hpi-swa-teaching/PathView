layout
straightenMorph
	
	(morphStraightened ifNil: [ morphStraightened := false ])
		ifFalse: [
			morph straighten.
			morphStraightened := true ].