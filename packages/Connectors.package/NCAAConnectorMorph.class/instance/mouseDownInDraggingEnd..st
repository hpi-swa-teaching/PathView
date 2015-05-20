event handling
mouseDownInDraggingEnd: anEvent
	| constraint |
	constraint := constraints detect: [ :ea | ea input == anEvent hand ] ifNone: [ ^self ].

	(anEvent shiftPressed or: [anEvent yellowButtonPressed])
		ifTrue: [
			self insertVertexNextTo: constraint at: (self griddedPoint: anEvent position).
			self setProperty: #startDraggingEvent toValue: (anEvent copy setHand: nil).
			self log: #debug items: { 'add '. self vertices }
		]