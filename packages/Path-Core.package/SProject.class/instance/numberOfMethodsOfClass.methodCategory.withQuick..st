metrics
numberOfMethodsOfClass: aClass methodCategory: aCategory withQuick: aBoolean

	^ (self 
		methodsPerClass: aClass 
		andMethodCategory: aCategory 
		withQuick: aBoolean) size