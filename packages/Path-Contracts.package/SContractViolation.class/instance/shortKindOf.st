printing
shortKindOf
	^ self kindOf caseOf: {
		[#precondition] -> ['Pre'].
		[#invariant] -> ['Inv'].
		[#postcondition] -> ['Post'].
	}.