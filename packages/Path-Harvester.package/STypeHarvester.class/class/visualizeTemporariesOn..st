pathMap-visualization
visualizeTemporariesOn: aPathMap
	| temporaries morph | 
	temporaries := (self bucketFrom: aPathMap) arguments.
	temporaries keysAndValuesDo: [:method :types | 
		morph := self getMorph: method with: Color gray from: aPathMap.	
		self addInfo: [:stream | types 
									do: [:each | stream 
													nextPutAll: each asString; 
													nextPut: Character cr]] 
			to: morph 
			withLabel: 'temporary types'].