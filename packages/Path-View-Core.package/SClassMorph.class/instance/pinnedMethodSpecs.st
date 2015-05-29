loading/saving
pinnedMethodSpecs

	^ self allMorphs
		select: [:m | ((m respondsTo: #isPinned) and: [m isPinned])
					and: [m isKindOf: SMethodMorph]]
		thenCollect: [:m | m klass -> m methodName]