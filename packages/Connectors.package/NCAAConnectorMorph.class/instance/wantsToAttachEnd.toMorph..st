protected-policy
wantsToAttachEnd: index toMorph: aMorph
	"Answer true if I want my end with index 'index' (1 or 2) to attach to the given Morph."
	^(aMorph inPartsBin or: [ aMorph owner isPartsBin ]) not