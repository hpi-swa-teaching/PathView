*connectors-initialization
uniqueNameLike: stem in: aWorld
	"Choose an innocuous name for the receiver -- one that does not end in the word Morph, and that is unique among the names in the World"

	| proposedName allKnownNames |
	proposedName := stem.
	(proposedName size > 5 and: [proposedName endsWith: 'Morph'])
		ifTrue: [proposedName := proposedName copyFrom: 1 to: proposedName size - 5.
			proposedName := proposedName asString translated.].
	
	allKnownNames := aWorld ifNil: [Set new] ifNotNil: [aWorld allKnownNames asSet].
	(allKnownNames includes: proposedName) ifFalse: [ ^proposedName ].

	^ Utilities keyLike: proposedName asString satisfying:
		[:name | (allKnownNames includes: name) not]