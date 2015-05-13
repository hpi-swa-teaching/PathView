instance creation
on: aClass in: aClassMorph
	
	^ self basicNew
		klass: aClass;
		classMorph: aClassMorph;
		initialize;
		yourself