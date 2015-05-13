updating
checkRecategorizedEvent: aSystemEvent
	aSystemEvent itemKind caseOf: {
		[#class] -> [((self isEventOldCategoryInProject: aSystemEvent) 
						or: [self isEventCategoryInProject: aSystemEvent])
							ifTrue: [self project resetClassesCache.
									self isDirty: true]].
		[#method] -> [self isEventClassInProject: aSystemEvent]}
	otherwise: [].