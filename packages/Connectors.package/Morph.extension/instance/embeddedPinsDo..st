*connectors-attachment points
embeddedPinsDo: aBlock
	self
		allConnectableMorphsDo: [:m |
			(m ~~ self and: [ m wantsConnectionWhenEmbedded ])
				ifTrue: [ aBlock value: m ]].
