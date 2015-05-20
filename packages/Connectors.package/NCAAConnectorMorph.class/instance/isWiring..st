wiring
isWiring: aBoolean

	aBoolean
		ifTrue: [ self setProperty: #wiring toValue: true ]
		ifFalse: [ self removeProperty: #wiring ]