contract creation
generatePostconditionsOn: aSymbol in: aClass
	
	| argumentNames builder |
	argumentNames := (aClass methodDict at: aSymbol) methodNode arguments collect: 		[:a | a name].
	builder := SPostconditionBuilder new. 
	self typesBucket 
		ifNotNil: [builder typeInfo: (self typesBucket returnFor: 
										(aClass methodDict at: aSymbol))].
	self valueRangeBucket
		ifNotNil: [builder valueRangeInfo: (self valueRangeBucket returnFor: 
											(aClass methodDict at: aSymbol))].
	builder
		setSelector: aSymbol argumentNames: argumentNames;
		addGroup: self groupName;
		buildAndStoreIn: aClass.
	^ builder compiledMethod
	