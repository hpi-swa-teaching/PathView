visualization
addStatementCoveringInfo: aNumber to: aMorph
	aMorph addToAdditionalInfo: (aNumber * 100) floor asString, 
									'% of statements covered.'.