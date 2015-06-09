instance creation
on: aMorph withMethod: aSelector in: aClass
	
	^ (super on: aMorph)
		initializeWithClass: aClass andSelector: aSelector