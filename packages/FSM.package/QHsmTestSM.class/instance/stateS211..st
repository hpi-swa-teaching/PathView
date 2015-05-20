state handlers
stateS211: anEvent 
	anEvent eventType caseOf: { 
				[#entry] -> [^nil].
				[#exit] -> [^nil].
				['D'] -> 
						[self newState: 's21'.
						^nil].
				['G'] -> 
						[self newState: 's0'.
						^nil]}
		otherwise: [].
	^self state: 's21'