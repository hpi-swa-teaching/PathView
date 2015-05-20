*connectors-graphs
allSuccessors
	| preds |
	preds := IdentitySet new.
	self addAllSuccessorsTo: preds.
	^preds
