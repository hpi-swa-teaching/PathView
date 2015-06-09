layout graph-based
morphForMethod: anAssociation
	"Return the SMethodMorph for the given methods (anAssociation: class -> methodSelectorSymbol).
	The returned object can be used to color the entry or to set an icon of that entry."
	
	^ self morphForMethod: anAssociation do: #yourself