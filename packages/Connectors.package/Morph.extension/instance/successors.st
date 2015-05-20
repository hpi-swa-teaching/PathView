*connectors-graphs
successors
	| retval |
	retval := IdentitySet new.
	self outgoingConnections do: [ :conn | conn destinationMorph
		ifNotNilDo: [ :dm | dm isHandMorph ifFalse: [ retval add: dm ] ]].
	^retval