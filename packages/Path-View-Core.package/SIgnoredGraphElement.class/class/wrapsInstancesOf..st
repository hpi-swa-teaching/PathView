instance creation
wrapsInstancesOf: aClass
	
	^ (aClass isKindOf: SSmartLabelMorph class) | (aClass = SDiagramMorphToolbar)