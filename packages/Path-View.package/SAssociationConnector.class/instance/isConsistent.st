updating
isConsistent
	
	^ super isConsistent
		and: [ self sourceMorph visualizedClass allInstVarNames includes: self variableName ]