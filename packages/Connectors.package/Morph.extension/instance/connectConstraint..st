*connectors-private
connectConstraint: aConstraint
	| oldConstraints |
	oldConstraints := self valueOfProperty: #connectedConstraints ifAbsentPut: [ WeakSet new ].
	oldConstraints add: aConstraint.