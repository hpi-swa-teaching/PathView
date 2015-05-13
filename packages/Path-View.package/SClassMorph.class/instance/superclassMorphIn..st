accessing
superclassMorphIn: collectionOfMorphs
	"Find the morph in collectionOfMorphs, that represents the best match for a superclass-connection for the receiver.
	If no such morph can be found, return nil."
	
	| currentSuperclass |
	currentSuperclass := self visualizedClass.
	^ [ currentSuperclass := currentSuperclass superclass ]
		whileNotNil: [
			"Go up the inheritance chain to the first class, that is represented by at least one morph in the diagram."
			(collectionOfMorphs select: [ :morph |
				morph visualizedClass == currentSuperclass ])
					ifNotEmptyDo: [ :superclassMorphs |
						^ superclassMorphs ifNotEmpty: [ self nearestMorphIn: superclassMorphs ] ] ]