views
allViewReferences
	
	| methods |
	methods := SortedCollection new.
	Cursor wait showWhile:
		[ Class allSubInstances do:
			[ :class | "find all the methods of the receiver and not of all its superclasses "
				(class theMetaClass organization listAtCategoryNamed: SClassDiagramMorph diagramCodeCategory) 
						asSet asSortedArray do:
					[ :method |
						method numArgs = 1 ifTrue: [
							methods add: (MethodReference class: class theMetaClass selector: method)] ] ] ].
	^ methods