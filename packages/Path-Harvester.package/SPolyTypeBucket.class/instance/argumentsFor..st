accessing
argumentsFor: aMethod
	^ self arguments
		at: aMethod methodReference
		ifAbsentPut: [ self arrayOfSetsSized: aMethod numTemps ]