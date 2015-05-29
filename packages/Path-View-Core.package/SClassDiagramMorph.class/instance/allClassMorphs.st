accessing
allClassMorphs
	
	^ self diagramParent
		ifNotNilDo: [ :parent | parent classMorphs ifEmpty: [ #() ] ]