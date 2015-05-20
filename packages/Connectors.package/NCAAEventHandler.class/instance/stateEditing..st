state handlers
stateEditing: evt
	^evt caseOf: {
		[#dragStart] -> [ morph enterEditing. nil ].
		[#dragStop] -> [
			|  buttonEvent |
			morph exitEditing.
			buttonEvent := event arguments first mouseUpEvent.
			event arguments first delete.
			self handleMouseUp: buttonEvent.
			self newState: #Connected ].
		[#step] -> [	 morph stepEditing. nil ].
	} otherwise: [ self state: #Connected ]