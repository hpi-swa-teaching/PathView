accessing
morph
	"Go into subgraphs, until we meet a real morph."
	
	^ graph nodes
		ifEmpty: [ nil ]
		ifNotEmptyDo: [ :nodes | nodes anyOne morph ]