constraints
inputs: aCollection 
	"aCollection consists of objects that I derive my target from"

	inputs do: [:ea | ea ifNotNil: [ea disconnectConstraint: self]].
	inputs := WeakArray withAll: aCollection.
	inputs do: [:ea | ea ifNotNil: [ea connectConstraint: self]].
	lastTargetBounds := nil.
	aCollection isEmpty
		ifTrue: [ self stopStepping ]
		ifFalse: [ self startStepping ]