event handling
mouseDownInOneEndConnected: anEvent 
	| constraint pos |
	constraint := self findEndNear: (pos := anEvent position).
	self addedSubmorphs do: [ :h | (h containsPoint: pos)
		ifTrue: [ ^h handleEvent: anEvent  ]].

	constraint ifNotNil: 
			[(self allowsDetachmentOfConstraint: constraint) 
				ifTrue: 
					[constraint connectToNothing.
					^self trigger: #mouseDownNearEnd
						withArguments: { 
								constraint.
								anEvent}]
				ifFalse: [^self]].
	constraint := constraints detect: [:ea | ea input isNil].
	constraint ifNil: [self error: 'can''t happen']
		ifNotNil: 
			[constraint center: anEvent position.
			self trigger: #mouseDownNearEnd
				withArguments: { 
						constraint.
						anEvent}]