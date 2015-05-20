state handlers
stateDraggingEnd: evt 
	evt caseOf: {
		[#entry] -> 
			[morph enterDraggingEnd ].
		[#exit] -> 
			[morph exitDraggingEnd; enterHandlingDrop ].
		[#step] -> 
			[morph monitorDestinationForEnds ifTrue: [ ^self newState: #DraggingEndOver ]].
		[#mouseUp] -> 
			[^(morph mouseUpInDraggingEnd: event)
				ifTrue: [self newState: #Idle]].
		[#mouseDown] -> 
			[morph mouseDownInDraggingEnd: event. ^nil ]}
		 otherwise: [].
	^self global