event handling
monitorDestinationForEnds
	| targets cTargets |
	targets := IdentitySet new.
	constraints
		do: [:aConstraint | 
			| constraintInput | 
			constraintInput := aConstraint input.
			(constraintInput isNil
					or: [constraintInput isHandMorph])
				ifTrue: [cTargets := self
								connectionTargetsAt: (self visible
										ifTrue: [aConstraint center]
										ifFalse: [ActiveHand position])
								for: aConstraint.
					cTargets isEmpty
						ifFalse: [targets
								add: (ActiveHand lastEvent shiftPressed
										ifTrue: [cTargets last]
										ifFalse: [cTargets first])]]].
	self
		newCursor: (targets isEmpty
				ifTrue: [Cursor crossHair]
				ifFalse: [Cursor webLink]).
	self
		valueOfProperty: #highlightedTargets
		ifPresentDo: [:ht | (ht difference: targets)
				do: [:ea | ea highlightForConnection: false]].
	targets
		do: [:ea | ea highlightedForConnection
				ifFalse: [ea highlightForConnection: true]].
	self setProperty: #highlightedTargets toValue: targets.
	^ targets isEmpty not