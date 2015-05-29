instance creation
wrapsInstancesOf: aClass
	
	^ (aClass isKindOf: Collection class) or: [ aClass isKindOf: SGraph class ]