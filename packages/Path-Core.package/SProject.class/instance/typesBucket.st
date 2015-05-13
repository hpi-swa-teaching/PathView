buckets
typesBucket
	"Answer the value of typesBucket"

	^ self harvestedBuckets 
		at: STypeHarvester asString asSymbol
		ifAbsent: [nil]