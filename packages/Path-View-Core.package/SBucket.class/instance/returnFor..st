public API
returnFor: aMethod

	^ self returns 
		at: aMethod methodReference
		ifAbsent: [nil]