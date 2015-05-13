building
initialDiagramMorph
	
	^ startClass
		ifNotNil: [ | classMorph |
			classMorph := SClassMorph on: startClass.
			classMorph position: ((self initialExtent x / 2) - (classMorph width / 2)) @ 
						((self initialExtent y / 2) - (classMorph height / 2)).
			classMorph ]