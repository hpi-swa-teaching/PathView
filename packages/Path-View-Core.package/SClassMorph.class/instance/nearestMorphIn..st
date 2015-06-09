accessing
nearestMorphIn: collectionOfMorphs
	
	^ collectionOfMorphs detectMin: [ :each | each center dist: self center ]