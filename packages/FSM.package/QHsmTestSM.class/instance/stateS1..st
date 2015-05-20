state handlers
stateS1: anEvent 
	^anEvent eventType caseOf: { 
				[#entry] -> [nil].
				[#exit] -> [nil].
				[#init] -> 
						[self newInitialState: 's11'.
						nil].
				['A'] -> 
						[self newState: 's1'.
						nil].
				['B'] -> 
						[self newState: 's11'.
						nil].
				['C'] -> 
						[self newState: 's2'.
						nil].
				['D'] -> 
						[self newState: 's0'.
						nil].
				['F'] -> 
						[self newState: 's211'.
						nil]}
		otherwise: [self state: 's0']