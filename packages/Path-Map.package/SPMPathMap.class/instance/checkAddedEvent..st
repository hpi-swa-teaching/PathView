updating
checkAddedEvent: aSystemEvent
	aSystemEvent itemKind caseOf: {
		[#class] -> [self isEventCategoryInProject: aSystemEvent].
		[#protocol] -> [self isEventClassInProject: aSystemEvent].
		[#method] -> [self isEventClassInProject: aSystemEvent]} 
	otherwise: [].