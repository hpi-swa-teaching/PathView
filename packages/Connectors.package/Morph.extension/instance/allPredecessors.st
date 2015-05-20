*connectors-graphs
allPredecessors
	| preds |
	preds := IdentitySet new.
	self addAllPredecessorsTo: preds.
	^preds
