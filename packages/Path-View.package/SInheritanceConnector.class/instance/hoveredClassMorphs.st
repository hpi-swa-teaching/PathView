reengineering
hoveredClassMorphs
	
	| lineEndPosition |
	lineEndPosition := self lineEndPosition.
	^ self owner submorphsSatisfying: [ :submorph |
		(submorph isKindOf: SClassMorph) and: [
			submorph boundsInWorld containsPoint: lineEndPosition ] ]