building
setWeight
	self isInheritedTestSelectorsMethodCategory
		ifTrue: [^ self weight: self inheritedTestSelectors size].
	self weight: (self project 
					numberOfMethodsOfClass: self parentMorph sourceCodeEntity 
					methodCategory: self sourceCodeEntity
					withQuick: self globalOptions showAllMethods).