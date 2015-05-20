state handlers
stateConnected: evt
	^evt caseOf: {
		[#entry] -> [ morph enterConnected; connectionsChanged. nil ].
		[#mouseDown] -> [ self metaMouseButtonOr: [ morph mouseDownInConnected: event. nil] ].
		[#startEditing] -> [ self newState: #Editing ].
		[#step] -> [ morph stepConnected. nil ].
	} otherwise: [ self state: #Idle ].