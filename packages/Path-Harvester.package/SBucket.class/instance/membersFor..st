public API
membersFor: aClass
	
	^ self members
		at: aClass
		ifAbsentPut: [Array new: aClass allInstVarNames size]