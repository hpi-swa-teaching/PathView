buckets
typesBucket: aTypeBucket

	^ self harvestedBuckets 
		at: STypeHarvester asString asSymbol
		put: aTypeBucket