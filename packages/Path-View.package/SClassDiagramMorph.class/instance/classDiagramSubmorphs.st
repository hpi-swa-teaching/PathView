accessing
classDiagramSubmorphs
	
	^ self submorphs select: [ :morph | morph isClassDiagramMorph ]