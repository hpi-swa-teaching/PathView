building
children
	| children |
	self isInheritedTestSelectorsMethodCategory
		ifTrue: [^ self inheritedTestSelectors].
	children := self project 
		methodsPerClass: self parentMorph sourceCodeEntity 
		andMethodCategory: self sourceCodeEntity
		withQuick: self globalOptions showAllMethods.
	self pathMap sortMorphsByStaticMetric 
		ifTrue: [^ self sortChildrenByStaticMetric: children]
		ifFalse: [^ children].
	