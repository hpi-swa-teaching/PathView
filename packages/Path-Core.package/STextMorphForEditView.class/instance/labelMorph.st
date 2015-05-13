accessing
labelMorph
	"Answer the value of labelMorph"

	^ labelMorph ifNil: [labelMorph := SLabelMorph label: '']