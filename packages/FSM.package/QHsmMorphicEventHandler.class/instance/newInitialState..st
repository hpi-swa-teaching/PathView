state handler actions
newInitialState: aState
	self log: #newInitialState items: { myState stateName. aState }.
	^super newInitialState: aState.
