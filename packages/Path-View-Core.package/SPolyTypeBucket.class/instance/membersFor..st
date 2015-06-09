accessing
membersFor: aClass
	^ self members
		at: aClass
		ifAbsentPut: [ self arrayOfSetsSized: aClass allInstVarNames size ]