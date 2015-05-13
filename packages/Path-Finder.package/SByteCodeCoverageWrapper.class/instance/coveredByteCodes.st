accessing
coveredByteCodes
	"Answer the value of coveredByteCodes"

	^ coveredByteCodes ifNil: [coveredByteCodes := OrderedCollection new]