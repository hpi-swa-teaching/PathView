updating
checkRenamedEvent: aSystemEvent
	aSystemEvent itemKind caseOf: {
		[#category] -> [(self isEventItemCategoryInProject: aSystemEvent)
							ifTrue: [self removeCategoryFromProject: aSystemEvent]].
		[#class] -> [(self isEventCategoryInProject: aSystemEvent) 
						ifTrue: [self project resetClassesCache]].
		[#protocol] -> [self isEventClassInProject: aSystemEvent]}
	otherwise: [].