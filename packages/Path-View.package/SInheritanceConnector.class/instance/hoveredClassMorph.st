reengineering
hoveredClassMorph
	
	^ self hoveredClassMorphs
		ifEmpty: nil
		ifNotEmptyDo: #first