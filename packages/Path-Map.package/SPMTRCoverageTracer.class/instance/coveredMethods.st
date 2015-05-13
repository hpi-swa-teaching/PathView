accessing
coveredMethods
	"Answer the value of coveredMethods"

	^ coveredMethods ifNil: [coveredMethods := Dictionary new]