updating
update
	
	((sourceMorph klass instVarNames includes: variableName)
		or: [ targetMorph klass instVarNames includes: variableName ])
			ifFalse: [ self color: Color red ].