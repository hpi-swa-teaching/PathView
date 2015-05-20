state handlers
stateS2: anEvent 
	^anEvent eventType caseOf: { 
				[#entry] -> [nil].
				[#exit] -> [nil].
				[#init] -> 
						[self newInitialState: 's21'.
						nil].
				['C'] -> 
						[self newState: 's1'.
						nil].
				['F'] -> 
						[self newState: 's11'.
						nil]}
		otherwise: [self state: 's0']