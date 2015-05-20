*connectors-queries
incomingConnectionCount
	| retval |
	retval := 0.
	self connectionsDo: [ :conn | conn destinationMorph == self ifTrue: [ retval := retval + 1 ]].
	^retval