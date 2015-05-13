accessing
implementationMorph
	"Answer the value of implementationMorph"

	^ implementationMorph ifNil: [implementationMorph := SImplementationMorph 
																on: klass in: self]