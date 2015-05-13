metrics
numberOfMethodsOfCategory: aCategory withQuick: aBoolean

	^ (self classesOfCategory: aCategory) 
		inject: 0 
		into: [:sum :each | 
			sum := sum + (self numberOfMethodsOfClass: each withQuick: aBoolean)].