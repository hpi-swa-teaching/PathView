building
setWeight
	self isInheritedTestSelectorsMethodCategory
		ifTrue: [^ self weight: self inheritedTestSelectors size].
	self isClassCategory
		ifTrue: [self weight: (self project
			numberOfMethodsOfOneSideClass: self parentMorph sourceCodeEntity class
			withQuick: self globalOptions showAllMethods)]
		ifFalse: [self weight: (self project
			numberOfMethodsOfOneSideClass: self parentMorph sourceCodeEntity
			withQuick: self globalOptions showAllMethods)].