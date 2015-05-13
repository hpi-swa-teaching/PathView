metrics
numberOfMethodsWithoutLowComplexity
	"Number of Methods with a complexity > 1"
	^ (self allMethods select: [:each | each compiledMethod complexity > 1]) size