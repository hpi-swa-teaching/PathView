*connectors-connection
addConnectedMorphsTo: aCollection
	"Add myself and all my connected Morphs (recursively) to aCollection"
	aCollection add: self.
	self connections do: [ :ea |
		ea ifNotNil: [
			(aCollection includes: ea)
				ifFalse: [ ea addConnectedMorphsTo: aCollection. ]
		]
	].
	self connectedMorphs do: [ :ea |
		ea ifNotNil: [
			(aCollection includes: ea)
				ifFalse: [ ea addConnectedMorphsTo: aCollection. ]
		]
	].
	^aCollection