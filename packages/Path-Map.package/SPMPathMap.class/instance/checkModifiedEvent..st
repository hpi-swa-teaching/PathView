updating
checkModifiedEvent: aSystemEvent
	aSystemEvent itemKind caseOf: {
		[#class] -> [self isEventClassInProject: aSystemEvent].
		[#method] -> [self isEventClassInProject: aSystemEvent]} 
	otherwise: [].