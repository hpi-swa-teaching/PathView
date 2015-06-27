monticello conversion
symbolsToTypes: aCollection
	^ aCollection collect: [:each | self symbolToType: each]