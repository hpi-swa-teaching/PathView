state handlers
stateWaitingForDoubleClick: evt 
	^evt caseOf: { 
				[#entry] -> 
						[firstClickDown := (event copy setHand: nil).
						morph startStepping.
						nil].
				[#init] -> [self newInitialState: #WaitingForDoubleClickWithMouseDown ].
				[#step] -> 
						[self doubleClickTimedOut ifTrue: 
								[ self returnToIdleHistory ]].
				[#exit] -> 
						[morph stopStepping.
						self doubleClickTimedOut 
							ifTrue: 
								[self doubleClickTimeout: event.
								nil]].
				[#mouseLeave] -> 
						[self eventInsideMorphBounds 
							ifTrue: [ self returnToIdleHistory ]
							ifFalse: [self global]]}
		otherwise: [self global]