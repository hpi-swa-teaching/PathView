accessing
resultHeader
	^ (Dictionary newFromPairs: {
		#tag. 'Contracts enabled'. 
		#methodReference. 'Mutated method'. 
		#testFails. 'Test failures'. 
		#testErrors. 'Test errors'. 
		#contractFails. 'Failing contracts'})