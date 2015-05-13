building
children
	| categories |
	categories := OrderedCollection new.
	self globalOptions showMethodCategories
		ifTrue: [categories := (self project 
					methodCategoriesOfClass: self sourceCodeEntity
					withQuick: self globalOptions showAllMethods) 
						asOrderedCollection]
		ifFalse: [
			(self project numberOfMethodsOfOneSideClass: self sourceCodeEntity
				withQuick: self globalOptions showAllMethods) > 0
					ifTrue: [categories add: #'no category'].
			(self project numberOfMethodsOfOneSideClass: self sourceCodeEntity class
				withQuick: self globalOptions showAllMethods) > 0
					ifTrue: [categories add: #'no category (class)']].
	(((self sourceCodeEntity isTestCaseClass and: 
		[(self sourceCodeEntity = TestCase) not]) and:
			[self sourceCodeEntity shouldInheritSelectors]) and: 
				[self sourceCodeEntity testSelectors size ~= 
				 	self sourceCodeEntity allTestSelectors size])
						ifTrue: [categories 
							add: SPMMethodCategoryMorph inheritedTestSelectorId].
	^ categories