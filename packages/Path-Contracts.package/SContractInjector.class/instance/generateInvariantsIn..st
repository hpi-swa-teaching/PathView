contract creation
generateInvariantsIn: aClass

	| builder selector |
	builder := SInvariantBuilder new.
	self typesBucket 
		ifNotNil: [builder typeInfo: (self typesBucket membersFor: aClass)].
	self valueRangeBucket
		ifNotNil: [builder valueRangeInfo: (self valueRangeBucket membersFor: aClass)].
	selector := aClass asString copyReplaceAll: ' ' with: '' asTokens: false.
	builder
		setSelector: selector argumentNames: {};
		addGroup: self groupName;
		addInstVars: aClass allInstVarNames;
		buildAndStoreIn: aClass.
	^ builder compiledMethod
