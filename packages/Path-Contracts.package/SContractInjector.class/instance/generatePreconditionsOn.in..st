contract creation
generatePreconditionsOn: aSymbol in: aClass
	
	| argumentNames builder |
	argumentNames := (aClass methodDict at: aSymbol) methodNode arguments collect: 		[:a | a name].
	builder := SPreconditionBuilder new. 
	self typesBucket 
		ifNotNil: [builder typeInfo: (self typesBucket argumentsFor: 
												(aClass methodDict at: aSymbol))].
	self valueRangeBucket
		ifNotNil: [builder valueRangeInfo: (self valueRangeBucket argumentsFor: 												(aClass methodDict at: aSymbol))].
	builder 
		setSelector: aSymbol argumentNames: argumentNames;
		addGroup: self groupName;
		buildAndStoreIn: aClass.
	^ builder compiledMethod