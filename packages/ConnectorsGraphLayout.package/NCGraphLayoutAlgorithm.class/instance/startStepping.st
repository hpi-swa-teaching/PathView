stepping
startStepping
	iterations := iterations - (iterations \\ 3).
	layoutMorph ifNil: [^self].
	World
		startStepping: self
		at: Time millisecondClockValue
		selector: #step
		arguments: { 
				}
		stepTime: self stepTime