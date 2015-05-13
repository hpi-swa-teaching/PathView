updating
checkRemovedEvent: aSystemEvent
	aSystemEvent itemKind caseOf: {
		[#category] -> [(self isEventItemCategoryInProject: aSystemEvent)
							ifTrue: [self removeCategoryFromProject: aSystemEvent]].
		[#class] -> [(self isEventCategoryInProject: aSystemEvent)
						ifTrue: [self removeClassFromProjectCache: aSystemEvent]].
		[#protocol] -> [self isEventClassInProject: aSystemEvent].
		[#method] -> [self isEventClassInProject: aSystemEvent]}
	otherwise: [].