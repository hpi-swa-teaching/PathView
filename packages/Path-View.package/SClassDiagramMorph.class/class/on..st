instance creation
on: aClass
	
	^ self basicNew
		klass: aClass;
		initialize;
		yourself