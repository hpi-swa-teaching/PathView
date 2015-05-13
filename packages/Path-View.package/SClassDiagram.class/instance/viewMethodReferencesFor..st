views
viewMethodReferencesFor: aProject

	^ aProject allMethods
		select: [:ref |
			ref category = SClassDiagramMorph diagramCodeCategory
			and: [ref classIsMeta]]