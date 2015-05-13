testing
isPathMapDataAvailable
	^ self pathFinder notNil and: [self pathFinder coverageTracer notNil]