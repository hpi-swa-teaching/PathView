state handlers
stateS0: anEvent 
	^anEvent eventType caseOf: { 
				[#entry] -> [nil].
				[#exit] -> [nil].
				[#init] -> 
						[self newInitialState: 's1'.
						nil].
				['E'] -> 
						[self newState: 's211'.
						nil]}
		otherwise: [self top]