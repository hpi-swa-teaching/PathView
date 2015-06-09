views
allViews
	
	| navigation methods |
	methods := SortedCollection new.
	navigation := SystemNavigation default.
	Cursor wait showWhile:
		[ Class allSubInstances do:
			[ :x |
				(x theMetaClass allMethodsInCategory: SClassDiagramMorph diagramCodeCategory) do:
					[ :selector |
						selector numArgs = 1 ifTrue: [
							methods addIfNotPresent: selector asString allButLast ] ] ] ].
	^ methods