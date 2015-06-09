accessing
memberTypeFor: aVariableName in: aClass
	
	^ (aClass instVarNames includes: aVariableName) ifTrue: [
		(self currentTypeBucketFor: aClass) 
			ifNotNilDo: [:typeBucket |
				(typeBucket membersFor: aClass) 
					at: (aClass instVarIndexFor: aVariableName ifAbsent: nil) ifAbsent: nil]]