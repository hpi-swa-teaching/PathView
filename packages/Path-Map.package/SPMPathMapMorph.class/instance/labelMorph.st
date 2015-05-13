accessing
labelMorph
	"Answer the value of labelMorph"

	^ labelMorph ifNil: [self createLabelMorph]