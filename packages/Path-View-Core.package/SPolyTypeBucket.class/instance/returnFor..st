accessing
returnFor: aMethod

	^ self returns
		at: aMethod methodReference
		ifAbsentPut: [Set new]