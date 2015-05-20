*connectors-queries
connections
	"Answer the NCConnectorMorphs that are tied to me or my submorphs."
	| retval |
	retval := IdentitySet new.
	self connectionsDo: [ :c | retval add: c ].
	^retval