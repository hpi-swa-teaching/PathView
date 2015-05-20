state handler actions
newState: aState
	mySource ~= myState
		ifTrue: [ self log: #newState items: { myState stateName. mySource ifNotNilDo: [ :s | s stateName ]. aState } ]
		ifFalse: [ self log: #newState items: { myState stateName. aState } ].
	^super newState: aState.
