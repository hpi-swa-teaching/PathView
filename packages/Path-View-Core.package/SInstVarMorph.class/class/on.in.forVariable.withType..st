instance creation
on: aClass in: aClassMorph forVariable: aVariableName withType: type
	
	^ self basicNew
		klass: aClass;
		classMorph: aClassMorph;
		type: type;
		variableName: aVariableName;
		initialize;
		yourself