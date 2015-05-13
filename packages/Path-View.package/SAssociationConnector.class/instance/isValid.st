updating
isValid
	
	^ ((sourceMorph klass instVarNames includes: variableName)
		or: [ targetMorph klass instVarNames includes: variableName ])