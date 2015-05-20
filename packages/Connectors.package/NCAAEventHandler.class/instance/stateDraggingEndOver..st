state handlers
stateDraggingEndOver: evt 
	evt caseOf: {
		[#entry] -> [morph enterDraggingEndOver].
		[#exit] -> [morph exitDraggingEndOver].
		[#step] -> 
			[ ^morph monitorDestinationForEnds ifFalse: [ 
				morph constraints do: [ :ea | ea startStepping ].
				self newState: #DraggingEnd ]].
}
		 otherwise: [].

	^ self state: #DraggingEnd