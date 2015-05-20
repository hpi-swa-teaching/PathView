state handlers
stateWiringEndOver: evt 
	evt caseOf: {
		[#entry] -> [morph enterWiringEndOver].
		[#exit] -> [morph exitWiringEndOver]}
		 otherwise: [].

	^ self state: #WiringEnd