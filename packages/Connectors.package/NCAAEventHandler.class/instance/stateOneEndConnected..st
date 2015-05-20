state handlers
stateOneEndConnected: evt
	^evt caseOf: {
		[#entry] -> [ morph connectionsChanged. nil ].
		[#mouseDown] -> [ self metaMouseButtonOr: [morph mouseDownInOneEndConnected: event. nil] ].
		[#step] -> [ morph stepOneEndConnected. nil ].
	} otherwise: [ self state: #Idle ].