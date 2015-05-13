loading/saving
pinnedVariableSpecs

	^ self allMorphs
		select: [:m | ((m respondsTo: #isPinned) and: [m isPinned])
					and: [m isKindOf: SInstVarMorph]]
		thenCollect: [:m | m klass -> m variableName]