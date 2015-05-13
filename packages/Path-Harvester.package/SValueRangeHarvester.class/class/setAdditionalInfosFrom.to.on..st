pathMap-visualization
setAdditionalInfosFrom: aMethodReference to: aMorph on: aPathMap
	aMorph additionalInfo: (Dictionary newFrom: {
		#Method -> aMethodReference stringVersionDefault.
		#Temporaries-> ((self bucketFrom: aPathMap) arguments 
							at: aMethodReference 
							ifAbsent: [nil]). 
		#Return -> ((self bucketFrom: aPathMap) returns 
						at: aMethodReference 
						ifAbsent: [nil])})