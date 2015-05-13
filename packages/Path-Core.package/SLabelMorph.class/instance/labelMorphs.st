accessing
labelMorphs
	"Answer the value of labelMorphs"

	^ labelMorphs ifNil: [labelMorphs := OrderedCollection new]