*connectors-connection
preferredConnection: anArrayOrSelector 
	^ self
		setProperty: #preferredConnection
		toValue: ((anArrayOrSelector isKindOf: Symbol)
				ifTrue: [{anArrayOrSelector}]
				ifFalse: [anArrayOrSelector])