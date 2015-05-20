*connectors-graphs
neighbors
	| retval |
	retval := IdentitySet new.
	self incomingConnections do: [ :ea | ea sourceMorph
		ifNotNilDo: [ :sm | retval add: sm ]].
	self outgoingConnections do: [ :conn | conn destinationMorph
		ifNotNilDo: [ :dm | retval add: dm ]].
	^retval