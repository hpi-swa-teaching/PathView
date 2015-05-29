instance creation
on: aClass in: aClassMorph forCategory: aCategoryName
	
	^ self basicNew
		klass: aClass;
		category: aCategoryName;
		classMorph: aClassMorph;
		initialize;
		yourself