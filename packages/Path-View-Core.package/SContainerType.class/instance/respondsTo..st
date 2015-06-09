class membership
respondsTo: aSelector
	
	^ (super respondsTo: aSelector) or: [ self theNonMetaClass respondsTo: aSelector ]