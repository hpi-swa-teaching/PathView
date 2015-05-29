layout and labels
addEntry: aMorph
	"Adds the morph as an entry, provided the receiver is expanded and the morph wants to be shown OR aMorph is pinned."
	
	((expanded & aMorph wantsToBeShown) | aMorph needsToBeShown) ifTrue: [
		self addMorphBack: aMorph.
		aMorph show ].