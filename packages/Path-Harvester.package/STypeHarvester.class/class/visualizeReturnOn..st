pathMap-visualization
visualizeReturnOn: aPathMap
	| returns morph | 
	returns := (self bucketFrom: aPathMap) returns.
	returns keysAndValuesDo: [:method :type | 
		morph := self getMorph: method with: Color gray from: aPathMap.
		self addInfo: [:stream | stream 
								nextPutAll: type asString;
								nextPut: Character cr] 
			to: morph 
			withLabel: 'return type'].