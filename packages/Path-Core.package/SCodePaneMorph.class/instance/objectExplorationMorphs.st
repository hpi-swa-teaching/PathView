accessing
objectExplorationMorphs
	"Answer the value of objectExplorationMorphs"

	^ objectExplorationMorphs ifNil: [objectExplorationMorphs := Dictionary new]