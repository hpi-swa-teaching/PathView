building
children
	| children |
	self isInheritedTestSelectorsMethodCategory
		ifTrue: [^ self inheritedTestSelectors].
	self isClassCategory
		ifTrue: [children :=  self project
					methodsPerClass: self parentMorph sourceCodeEntity class
					withQuick: self globalOptions showAllMethods]
		ifFalse: [children := self project
					methodsPerClass: self parentMorph sourceCodeEntity 
					withQuick: self globalOptions showAllMethods].
	self pathMap sortMorphsByStaticMetric 
		ifTrue: [^ self sortChildrenByStaticMetric: children]
		ifFalse: [^ children].