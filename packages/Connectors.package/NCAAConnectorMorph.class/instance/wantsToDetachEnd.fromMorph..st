protected-policy
wantsToDetachEnd: index fromMorph: aMorph
	"Answer true if I want my end with index 'index' (1 or 2) to be detached from the given Morph."
	^aMorph isNil or: [ aMorph allowsDetachmentFromEnd: index ofConnector: self ]