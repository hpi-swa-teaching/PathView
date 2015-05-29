accessing
entries
	
	^ entries ifNil: [
		entries := self createEntries asOrderedCollection.
		entries do: [ :entry | entry privateOwner: self ] ]
		"Set the owner, without adding the entry. This was introduced after a bug, where connectors between a method-morph
		and a source-code-box where added to the world, instead of the diagram-morph, because the two connected morphs had their
		owner-field still set to nil. I know this is hacky, I did not see another solution.
		This ''strange' state, that the morph is no submorph of its owner-morph, will be fixed, as soon as the morph is expanded once."