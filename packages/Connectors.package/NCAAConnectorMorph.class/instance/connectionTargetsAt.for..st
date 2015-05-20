protected-policy
connectionTargetsAt: localPoint for: constraint
	"Answer a collection of prospective connection targets.
	Search up to the first playfield."
	| targets globalPoint index firstPlayfield |
	index := constraints indexOf: constraint.
	globalPoint := (constraint transformFrom: self world) localPointToGlobal: localPoint.
	targets := self world morphsAt: globalPoint.
	firstPlayfield := targets detect: [ :ea | ea isPlayfieldLike ] ifNone: [ ].
	targets := targets copyUpTo: firstPlayfield.
	targets := targets select: [ :ea |
		(ea wantsAttachmentFromEnd: index ofConnector: self)
			and: [ (self wantsToAttachEnd: index toMorph: ea) 
				"and: [ ea isShadowVisibleIn: (Rectangle center: globalPoint extent: 30@30) ]" ] ].

	"The following logic is to avoid connecting to other NCConnectors
	when there is something else there to connect to"
	^targets asSortedCollection: [ :a :b |
		a isConnector not and: [ a owner isPlayfieldLike ] ]