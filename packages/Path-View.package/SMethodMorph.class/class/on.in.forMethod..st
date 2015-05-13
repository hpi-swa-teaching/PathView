instance creation
on: aClass in: aClassMorph forMethod: aMethodName
	
	^ self basicNew
		klass: aClass;
		classMorph: aClassMorph;
		methodName: aMethodName;
		initialize;
		yourself