protected-notifications
couldConnectMorphs: morphs
	"Answer true if I am willing to connect to the (1 or 2) morphs given,
	and they're willing to be connected to me."

	morphs isEmpty ifTrue: [ ^false ].

	morphs withIndexDo: [ :end :i |
		i > 2 ifTrue: [ ^false ].
		(self wantsToAttachEnd: i toMorph: end)
			ifFalse: [ ^false ].
		end ifNotNil: [
			(end wantsAttachmentFromEnd: i ofConnector: self)
				ifFalse: [ ^false ].
		]
	].
	^true.