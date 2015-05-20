*connectors-queries
outgoingConnections
	| retval |
	retval := IdentitySet new.
	self connectionsDo: [ :conn | conn sourceMorph == self ifTrue: [ retval add: conn ]].
	^retval