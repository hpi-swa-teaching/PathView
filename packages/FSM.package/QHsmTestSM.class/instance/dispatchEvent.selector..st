running
dispatchEvent: anEvent selector: selector
	| type handlerState  |
	type := anEvent eventType.
	type ~~ #empty ifTrue: [ events addLast: ((anEvent ifNotNil: [ type ]) -> selector) ].
	handlerState := super dispatchEvent: anEvent selector: selector.
	^handlerState.