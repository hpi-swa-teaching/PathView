*connectors-graphs
predecessors
	| retval |
	retval := IdentitySet new.
	self incomingConnections do: [ :ea | ea sourceMorph
		ifNotNilDo: [ :sm | sm isHandMorph ifFalse: [ retval add: sm ]]].
	^retval 
		