*connectors-private
disconnectConstraint: aConstraint
	| oldConstraints |
	oldConstraints := self valueOfProperty: #connectedConstraints ifAbsent: [ ^self ].
	oldConstraints := oldConstraints reject: [ :ea | ea == aConstraint or: [ ea isNil ]].
	oldConstraints isEmpty ifTrue: [ self removeProperty: #connectedConstraints. ^self ].
	self setProperty: #connectedConstraints toValue: oldConstraints.