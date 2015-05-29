reengeneering
isDirectHierarchyNeighbor: newClassMorph
	
	^ newClassMorph visualizedClass superclass == self visualizedClass
		or: [ self visualizedClass superclass == newClassMorph visualizedClass ]