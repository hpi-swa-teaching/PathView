accessing
nameMorph
	"Answer the value of nameMorph"

	^ nameMorph ifNil: [nameMorph := SClassNameMorph on: self visualizedClass in: self]