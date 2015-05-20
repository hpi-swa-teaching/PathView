protected-policy
wantsToAttachEndsToMorphs: morphs
	"Answer true if I am willing to connect to the (1 or 2) morphs given.
	Either can be nil."

	morphs isEmpty ifTrue: [ ^false ].

	morphs withIndexDo: [ :end :i |
		i > 2 ifTrue: [ ^false ].
		(self wantsToAttachEnd: i toMorph: end)
			ifFalse: [ ^false ].
	].
	^true.