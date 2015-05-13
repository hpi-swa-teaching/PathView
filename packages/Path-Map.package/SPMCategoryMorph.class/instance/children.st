building
children
	| classes |
	classes := self project classesOfCategory: self sourceCodeEntity.
	self globalOptions showEmptyCategoriesAndClasses
		ifTrue: [^ classes]
		ifFalse: [^ classes select: [:each | 
					(self project 
						numberOfMethodsOfClass: each 
						withQuick: self globalOptions showAllMethods) > 0]]