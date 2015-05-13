comparing
= anObject
	^ ((((super = anObject) 
		and: [self range = anObject range])
		and: [self includesZero = anObject includesZero])
		and: [self positive = anObject positive])
		and: [self negative = anObject negative]