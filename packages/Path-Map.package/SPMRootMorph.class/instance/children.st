building
children
	| categories |
	categories := self project categoriesOrderedByTestsFirst.
	self globalOptions showEmptyCategoriesAndClasses
		ifTrue: [^ categories]
		ifFalse: [^ categories select: [:each | 
					(self project 
						numberOfMethodsOfCategory: each 
						withQuick: self globalOptions showAllMethods) > 0]]