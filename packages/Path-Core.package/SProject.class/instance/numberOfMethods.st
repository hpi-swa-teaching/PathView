metrics
numberOfMethods
	^ self categories 
		inject: 0 
		into: [:sum :each | sum := sum + (self numberOfMethodsOfCategory: each)]