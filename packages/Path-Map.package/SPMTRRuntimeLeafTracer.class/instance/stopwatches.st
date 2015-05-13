accessing
stopwatches
	"Answer the value of stopwatches"

	^ stopwatches ifNil: [stopwatches := Dictionary new]