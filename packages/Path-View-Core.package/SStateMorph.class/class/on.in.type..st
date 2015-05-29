instance creation
on: aClass in: aClassMorph type: aSymbol
	"Supported types are #instance, #class and #pool"
	
	^ self basicNew
		klass: aClass;
		classMorph: aClassMorph;
		type: aSymbol;
		initialize;
		yourself