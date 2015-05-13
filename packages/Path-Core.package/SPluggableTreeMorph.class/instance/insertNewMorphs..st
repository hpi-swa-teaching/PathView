private
insertNewMorphs: morphList 
	"Hook for highlighting root nodes after init or refresh"
	self highlightItemSelector 
		ifNotNil: [morphList do: [ :each | self refreshHighlightingOf: each ]].
	super insertNewMorphs: morphList