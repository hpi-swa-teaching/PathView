state handlers
stateS11: anEvent 
	anEvent eventType caseOf: { 
				[#entry] -> [^nil].
				[#exit] -> [^nil].
				['G'] -> 
						[self newState: 's211'.
						^nil].
				['H'] -> 
						[myFoo 
							ifTrue: 
								[myFoo := false.
								^nil]]}
		otherwise: [].
	^self state: 's1'