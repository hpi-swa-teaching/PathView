visualization
resetAllChildren
	self removeViolations.
	self rootMorph traverseAllChildsAndDo: [:each | 
		each 
			resetColor;
			resetAdditionalInfo;
			resetVisibility].