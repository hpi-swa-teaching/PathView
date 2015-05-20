event handling
mouseDownInDisconnected: anEvent
	| constraint pos |
	constraint := self findEndNear: (pos := anEvent position).
	"self addedSubmorphs do: [ :h | (h containsPoint: pos)
		ifTrue: [ ^h processEvent: anEvent  ]]."

	constraint
		ifNil: [
			self straighten.
			anEvent hand grabMorph: self.	"will generate ownerChangedToHand event" ]
		ifNotNil: [ self trigger: #mouseDownNearEnd withArguments: { constraint . anEvent } ].
