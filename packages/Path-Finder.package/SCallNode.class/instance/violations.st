accessing
violations
	"Answer the value of violations"

	^ violations ifNil: [violations := OrderedCollection new]