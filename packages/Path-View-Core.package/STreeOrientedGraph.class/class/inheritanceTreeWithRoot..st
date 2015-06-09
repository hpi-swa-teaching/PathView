instance creation
inheritanceTreeWithRoot: aNode
	
	^ self
		basedOn: [ :parent :child | parent morph isSuperClassOf: child morph ]
		withRoot: aNode