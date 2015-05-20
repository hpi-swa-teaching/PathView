state handlers
stateWiringEnd: evt 
	evt caseOf: {
		[#entry] -> 
			[morph enterWiringEnd.].
		[#exit] -> 
			[morph exitWiringEnd.]}
		 otherwise: [].
	^self state: #DraggingEnd.