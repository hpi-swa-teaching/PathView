contract violations
addViolations
	| morph violationMorph |
	self violations keysAndValuesDo: [:key :value | 
		morph := (self getMethodMorph: key actualClass and: key methodSymbol).
		violationMorph := SPMViolationMorph on: value.
		morph addMorphFront: (violationMorph 
								position: morph position - 
									(violationMorph width / 2@ violationMorph height / 2) -
									(1@1); 
								yourself).
		morph violations: value].