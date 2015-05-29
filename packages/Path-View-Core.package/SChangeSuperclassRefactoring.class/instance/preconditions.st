preconditions
preconditions
	
	^ (RBCondition hierarchyOf: oldSuperclass includes: newSuperclass)
		errorMacro: 'Hierarchy of old superclass must include the new superclass';
		yourself