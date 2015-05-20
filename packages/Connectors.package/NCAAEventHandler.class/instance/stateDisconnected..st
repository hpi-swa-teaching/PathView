state handlers
stateDisconnected: evt

	^evt caseOf: {
		[#entry] -> [ morph connectionsChanged. nil ].
		[#exit] -> [ nil ].

		[#mouseDown] -> [ self metaMouseButtonOr: [morph mouseDownInDisconnected: event. nil] ].
	} otherwise: [ self state: #Idle ].