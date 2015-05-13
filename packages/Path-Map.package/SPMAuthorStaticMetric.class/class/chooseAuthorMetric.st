public api
chooseAuthorMetric
	| selectors descriptions |
	selectors := (CompiledMethod selectors select: [:each | each beginsWith: 'author']).
	descriptions := selectors collect: [:each | 
							(CompiledMethod >> each) pragmas first arguments first].
	^ UIManager default 
			chooseFrom: descriptions
			values: selectors
			lines: #() 
			title: 'Author Metric'.