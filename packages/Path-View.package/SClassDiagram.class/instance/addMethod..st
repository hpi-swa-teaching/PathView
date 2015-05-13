layout graph-based
addMethod: anAssociation
	"anAssociation: class -> methodSelectorSymbol.
	If everything goes fine, returns the opened morph."
	
	^ self
		morphForClass: anAssociation key
		do: [ :morph | morph openMethod: anAssociation ].