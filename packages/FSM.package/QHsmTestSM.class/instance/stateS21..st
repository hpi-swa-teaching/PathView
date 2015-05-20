state handlers
stateS21: anEvent 
	anEvent eventType caseOf: { 
				[#entry] -> [^nil].
				[#exit] -> [^nil].
				[#init] -> 
						[self newInitialState: 's211'.
						^nil].
				['B'] -> 
						[self newState: 's211'.
						^nil].
				['H'] -> 
						[myFoo 
							ifFalse: 
								[myFoo := true.
								self newState: 's21'.
								^nil]]}
		otherwise: [].
	^self state: 's2'