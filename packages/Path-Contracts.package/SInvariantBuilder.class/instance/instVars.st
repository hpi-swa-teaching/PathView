accessing
instVars
	"Answer the value of instVars"

	^ instVars ifNil: [instVars := OrderedCollection new]