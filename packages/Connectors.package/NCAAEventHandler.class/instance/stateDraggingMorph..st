state handlers
stateDraggingMorph: evt 
	evt caseOf: {
		[#entry] -> [morph enterDraggingMorph].
		[#exit] -> [morph exitDraggingMorph; enterHandlingDrop].
		[#step] -> [morph monitorDestinationForEnds ].
		[#wireMorph] -> [ ^self newState: #WiringMorph ].
		[#ownerChangedToPasteUp] -> [^ self newState: #Idle]}
		 otherwise: [].
	^ self global