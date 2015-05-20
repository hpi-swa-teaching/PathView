state handlers
stateWiringMorph: evt 
	evt caseOf: {
		[#entry] -> [morph enterWiringMorph].
		[#exit] -> [morph exitWiringMorph]}
		 otherwise: [].
	^ self state: #DraggingMorph