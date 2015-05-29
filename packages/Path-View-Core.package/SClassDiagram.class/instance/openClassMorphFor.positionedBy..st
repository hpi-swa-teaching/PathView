layout graph-based
openClassMorphFor: aClass positionedBy: aBlock
	
	^ self openClassMorphFor: aClass nextTo: self extent / 2 positionedBy: aBlock