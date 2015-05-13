instance creation
openOn: aClass
	
	^ self basicNew
		initialize;
		startWithClass: aClass;
		yourself