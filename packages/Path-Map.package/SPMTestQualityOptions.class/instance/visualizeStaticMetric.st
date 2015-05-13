visualization
visualizeStaticMetric
	| morphs |
	morphs := self pathMap getAllMethodMorphs.
	self addMethodNamesAsAdditionalInformation: morphs.
	self staticCodeMetric visualizeMorphs: (morphs reject: [:each | 
														each isInheritedTestSelector]).
	