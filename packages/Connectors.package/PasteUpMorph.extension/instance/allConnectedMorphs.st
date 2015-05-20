*connectors-connections
allConnectedMorphs
	"Answer the Set of my submorphs that have connections"
	| allConnected |
	allConnected := IdentitySet new: submorphs size.
	submorphs do: [ :ea | ea connections isEmpty ifFalse: [ allConnected add: ea ]].
	^allConnected.