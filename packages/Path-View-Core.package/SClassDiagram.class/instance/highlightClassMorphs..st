highlighting
highlightClassMorphs: aClass
	
	| color lastClass |
	self removeHighlights.
	color := SClassMorph highlightColor.
	lastClass := nil.
	(self sortedClassMorphs: aClass) do: [ :classMorph |
		(lastClass notNil and: [ classMorph klass ~= lastClass ])
			ifTrue: [ color := self lighterHighlightColorFor: color inClass: aClass ].
		lastClass := classMorph klass.
		classMorph highlight: color ].