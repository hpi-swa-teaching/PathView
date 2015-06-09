public API
argumentsFor: aMethod

	^ self arguments
		at: aMethod methodReference
		ifAbsentPut: [Array new: aMethod numArgs]