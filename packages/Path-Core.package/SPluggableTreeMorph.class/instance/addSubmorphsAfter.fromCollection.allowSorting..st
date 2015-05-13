private
addSubmorphsAfter: parentMorph fromCollection: aCollection allowSorting: sortBoolean 
	"Hook for highlighting currently expanded tree nodes"
	| result |
	result := super 
		addSubmorphsAfter: parentMorph
		fromCollection: aCollection
		allowSorting: sortBoolean.
	self highlightItemSelector ifNotNil:[
		self refreshHighlightingOf: parentMorph.
		result do: [:each | self refreshHighlightingOf: each]].
	^ result