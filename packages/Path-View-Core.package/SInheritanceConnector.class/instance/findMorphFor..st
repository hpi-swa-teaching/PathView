reengineering
findMorphFor: aClass
	
	^ (self ownerThatIsA: SClassDiagram)
		ifNotNilDo: [ :diagram | diagram classMorphFor: aClass nearestTo: sourceMorph center ]
		ifNil: [ nil ]