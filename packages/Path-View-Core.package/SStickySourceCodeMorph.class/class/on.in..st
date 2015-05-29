instance creation
on: aSelector in: aClass
	
	^ self new
		initializeWith: aSelector in: aClass;
		yourself