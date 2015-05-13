contract violations
removeViolations
	| morph |
	self violations keysAndValuesDo: [:key :value | 
		morph := (self getMethodMorph: key actualClass and: key methodSymbol).
		morph submorphs 
			select: [:each | each class = SPMViolationMorph] 
			thenDo: [:each | morph removeMorph: each].
		morph violations: nil].