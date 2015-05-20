*connectors-queries
incomingConnections
	| retval |
	retval := IdentitySet new.
	self connectionsDo: [ :conn | conn destinationMorph == self ifTrue: [ retval add: conn ]].
	^retval