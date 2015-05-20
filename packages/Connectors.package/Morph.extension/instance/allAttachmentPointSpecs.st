*connectors-attachment points
allAttachmentPointSpecs
	| specs |
	specs := OrderedCollection new.
	self
		allConnectableMorphsDo: [:m |
			(m ~~ self and: [ m wantsConnectionWhenEmbedded ])
				ifTrue: [specs addLast: {#attachmentPointForEmbeddedMorph:. m}]].

	"A policy decision here: if a Morph has embedded submorphs that want connection, then those will replace the default attachment points."

	(specs isEmpty or: [ self definesAttachmentPointSpecs ])
		ifTrue: [ specs addAll: self attachmentPointSpecs ].

	^ specs