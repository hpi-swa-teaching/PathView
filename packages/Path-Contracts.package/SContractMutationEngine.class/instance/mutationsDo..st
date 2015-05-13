public api
mutationsDo: aBlock
	
	^ self mutationsDo: aBlock entryPoint: self coveredMethods first