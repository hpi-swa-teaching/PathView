accessing
childrenMorphs
	"Answer the value of childrenMorphs"

	^ childrenMorphs ifNil: [childrenMorphs := Dictionary new]