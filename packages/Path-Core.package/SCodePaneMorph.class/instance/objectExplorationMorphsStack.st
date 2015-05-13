accessing
objectExplorationMorphsStack

	^ objectExplorationMorphsStack 
		ifNil: [objectExplorationMorphsStack := OrderedCollection new]