connectors-queries
addConnectedConnectorsTo: aCollection
	"Add myself and all my connected connectors (recursively) to aCollection"
	aCollection add: self.
	self connections do: [ :ea |
		(ea notNil and: [ ea isConnector ]) ifTrue: [
			(aCollection includes: ea)
				ifFalse: [ ea addConnectedConnectorsTo: aCollection. ]
		]
	].
	self connectedMorphs do: [ :ea |
		(ea notNil and: [ ea isConnector ]) ifTrue: [
			(aCollection includes: ea)
				ifFalse: [ ea addConnectedConnectorsTo: aCollection. ]
		]
	].
	^aCollection
