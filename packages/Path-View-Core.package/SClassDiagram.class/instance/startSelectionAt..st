event handling
startSelectionAt: position
	
	selectionMorph ifNotNil:  
		[ selectionMorph initializeAt: position.
		self addMorph: selectionMorph ]